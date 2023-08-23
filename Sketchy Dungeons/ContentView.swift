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
    
    init(race: SketchyRaceBase, playerClass: SketchyPlayerClass, level: Int) {
        self.race = race
        self.playerClass = playerClass
        self.level = level
    }
    
    func increaseLevel() {
        level += 1
        increaseHitPoints()
    }
    
    private func increaseHitPoints() {
        let hitDie = playerClass.hitDie
        race.hitPoints += hitDie
    }
}

class CharacterGenerator: ObservableObject {
    @Published var selectedRace: SketchyRaceBase?
    @Published var selectedClass: SketchyPlayerClass?
    @Published var playerCharacter:PlayerCharacter?
    func generateCharacter() -> PlayerCharacter? {
        guard let race = selectedRace, let playerClass = selectedClass else {
            return nil
        }
        
        return PlayerCharacter(race: race, playerClass: playerClass, level: 1)
    }
}

struct ContentView: View {
    @ObservedObject private var characterGenerator = CharacterGenerator()
    
    
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
            if let playerCharacter = characterGenerator.generateCharacter() {
                              NavigationLink(destination: CharacterSheet(race: playerCharacter.race, playerClass: playerCharacter.playerClass)) {
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
