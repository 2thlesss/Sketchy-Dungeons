//
//  CharacterSheet.swift
//  Sketchy Dungeons
//
//  Created by Thomas Jadie Reeves on 5/27/23.
//
import SwiftUI
import UIKit

struct CharacterSheet: View {
    @Environment(\.presentationMode) var presentationMode
    
    var race: SketchyRaceBase
    var playerClass: SketchyPlayerClass
    var weapon: PlayerWeapon
   
    
    var body: some View {
        ZStack { UIController.BackgroundGradient()
            VStack {
                
                Text("Character Details")
                    .font(.largeTitle)
                    .padding()
                
                Text("Race: \(race.name)")
                Text("Class: \(playerClass.className)")
                Text("Heart: \(race.heart)")
                Text("Muscles: \(race.muscles)")
                Text("Brains: \(race.brains)")
                Text("Luck: \(race.luck)")
                Text ("Armor: \(race.armor)")
                Text ("Hit Points: \(race.hitPoints)")
                Text("Weapon: \(weapon.flavor.name) \(weapon.type.name)")
                
                
                
                
                
                
            }
        }
            Button("Dismiss") {
                presentationMode.wrappedValue.dismiss()
            }
        }
        
        
    }


struct CharacterSheet_Previews: PreviewProvider {
    static var previews: some View {
        // Ensure to define Human, Rogue, dagger, and Sharp before using them here
        CharacterSheet(race: Human(), playerClass: Rogue(skillPoints: 0, race: Human()), weapon: PlayerWeapon(type: Dagger(), flavor: Sharp(weapon: Dagger())))
    }
}


