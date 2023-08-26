//
//  ContentView.swift
//  Sketchy Dungeons
//
//  Created by Thomas Jadie Reeves on 5/27/23.
//

import SwiftUI

class PlayerCharacter {
    var race: SketchyRaceBase
    var playerClass: SketchyPlayerClass
    var level: Int
    var weapon: PlayerWeapon?
    
    init(race: SketchyRaceBase, playerClass: SketchyPlayerClass, level: Int, weapon: PlayerWeapon? = nil) {
        self.race = race
        self.playerClass = playerClass
        self.level = level
        self.weapon = weapon
    }
}

class WeaponGenerator: ObservableObject {
    @Published var weaponType: SketchyWeaponBase?
    @Published var weaponFlavor: SketchyWeaponAttribues?
    @Published var playerWeapon: PlayerWeapon?

    init() {
        self.weaponType = SketchyWeaponBase.randomWeaponType() // Assuming a method that returns a random weapon type
        self.weaponFlavor = SketchyWeaponAttribues.randomAttributeType() // Assuming a method that returns a random attribute type
        self.playerWeapon = generateWeapon()
    }

    func generateWeapon() -> PlayerWeapon? {
        guard let type = weaponType, let flavor = weaponFlavor else {
            return nil
        }
        return PlayerWeapon(type: type, flavor: flavor)
    }
}


class CharacterGenerator: ObservableObject {
    @Published var selectedRace: SketchyRaceBase?
    @Published var selectedClass: SketchyPlayerClass?
    @Published var playerCharacter: PlayerCharacter?

    func generateCharacter(using weaponGenerator: WeaponGenerator) -> PlayerCharacter? {
        guard let race = selectedRace, let playerClass = selectedClass else {
            return nil
        }

        let weaponToUse = weaponGenerator.generateWeapon() ?? PlayerWeapon(type: SketchyWeaponBase.defaultWeaponType(), flavor: SketchyWeaponAttribues.defaultAttributeType())
        return PlayerCharacter(race: race, playerClass: playerClass, level: 1, weapon: weaponToUse)
    }

}

class PlayerWeapon {
    var type: SketchyWeaponBase
    var flavor: SketchyWeaponAttribues
    init(type: SketchyWeaponBase, flavor: SketchyWeaponAttribues) {
        self.type = type
        self.flavor = flavor
    }
}

// ContentView will remain as it is

   
    struct ContentView: View {
        @ObservedObject private var characterGenerator = CharacterGenerator()
        @ObservedObject private var weaponGenerator = WeaponGenerator()
        
        var body: some View {
            NavigationView{
                VStack {
                    Text("Character Generation")
                        .font(.title)
                    
                    // Race selection
                    Text("Select Race:")
                        .font(.headline)
                    
                    HStack {
                        Button("Human") {
                            characterGenerator.selectedRace = Human()
                            //                    print(characterGenerator.selectedRace!)
                            //                    print(characterGenerator.selectedRace!.name)
                            //                    print(characterGenerator.selectedRace!.heart)
                            //                    print(characterGenerator.selectedRace!.brains)
                            
                            
                            
                        }
                        
                        Button("Elf") {
                            characterGenerator.selectedRace = Elf()
                        }
                        Button ("Dwarf") {
                            characterGenerator.selectedRace = Dwarf()
                        }
                        Button ("Halfling") {
                            characterGenerator.selectedRace = Halfling()
                        }
                        Button("Half-Orc") {
                            characterGenerator.selectedRace = HalfOrc()
                        }
                    }
                    .padding()
                    
                    // Class selection
                    Text("Select Class:")
                        .font(.headline)
                    
                    HStack {
                        Button("Rogue") {
                            characterGenerator.selectedClass = Rogue(skillPoints: 0, race: SketchyRaceBase())
                            
                        }
                        Button ("Caster") {
                            characterGenerator.selectedClass =
                            Caster(skillPoints: 0, race: SketchyRaceBase())
                        }
                        Button ("Fighter") {
                            characterGenerator.selectedClass =
                            Fighter(skillPoints: 0, race:SketchyRaceBase())
                        }
                    }
                    .padding()
                   
                    
                    // Generate character button
                    if let playerCharacter = characterGenerator.generateCharacter(using: weaponGenerator) {
                        NavigationLink(destination: CharacterSheet(race: playerCharacter.race, playerClass: playerCharacter.playerClass, weapon: playerCharacter.weapon?.type ?? SketchyWeaponBase.defaultWeaponType(), attri: .defaultAttributeType())) {
                            Text("Generate Character")
                        }
                    }


                    
                }
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    

