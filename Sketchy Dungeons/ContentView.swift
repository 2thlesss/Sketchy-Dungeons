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
    
    init(race: SketchyRaceBase, playerClass: SketchyPlayerClass) {
        self.race = race
        self.playerClass = playerClass
    }
}


class CharacterGenerator: ObservableObject {
    var selectedRace: SketchyRaceBase?
    var selectedClass: SketchyPlayerClass?
    
    func generateCharacter() -> PlayerCharacter? {
        guard let race = selectedRace, let playerClass = selectedClass else {
            return nil
        }
        
        return PlayerCharacter(race: race, playerClass: playerClass)
    }
}

struct ContentView: View {
    @StateObject private var characterGenerator = CharacterGenerator()
    @State private var isPresentingSheet = false
   
    
    var body: some View {
        VStack {
            Text("Character Generation")
                .font(.title)
            
            // Race selection
            Text("Select Race:")
                .font(.headline)
            
            HStack {
                Button("Human") {
                    characterGenerator.selectedRace = Human()
                }
                Button("Elf") {
                    characterGenerator.selectedRace = Elf()
                }
                Button ("Dwarf") {
                    characterGenerator.selectedRace = Dwarf()
                }
                Button ("Halfling"){
                    characterGenerator.selectedRace = Halfling()
                
                }
                Button("HalfOrc"){
                    characterGenerator.selectedRace = HalfOrc()
                }
            }
            .padding()
            
            // Class selection
            Text("Select Class:")
                .font(.headline)
            
            HStack {
                Button("Rogue") {
                    characterGenerator.selectedClass = Rogue(skillPoints: Int.random(in: 1...8))
                }
               
                // Add buttons for other classes...
            }
            .padding()
            
            // Generate character button
            Button("Generate Character") {
                if let playerCharacter = characterGenerator.generateCharacter() {
                    isPresentingSheet.toggle()
                    print("Character: \(playerCharacter.race.name) \(playerCharacter.playerClass.name)")
                }
            }
            .font(.headline)
            .padding()

            if isPresentingSheet {
                CharacterSheet()
                    .fullScreenCover(isPresented: $isPresentingSheet, content: CharacterSheet.init)
            }

            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
