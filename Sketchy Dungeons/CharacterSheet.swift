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
    let race: SketchyRaceBase
    let playerClass: SketchyPlayerClass
    
    var body: some View {
        VStack {
            Text("Race: \(race.name)")
            Text("Class: \(playerClass.className)")
            Text("Heart: \(race.heart)")
           
            Text("Muscles: \(race.muscles)")
            Text("Brains: \(race.brains)")
            Text("Luck: \(race.luck)")
            Text ("Armor: \(race.armor)")
            Text ("Hit Points: \(race.hitPoints)")
            // Replace nameClass with the appropriate property
            
            Button("Dismiss") {
                presentationMode.wrappedValue.dismiss()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
    }
}

struct CharacterSheet_Previews: PreviewProvider {
    static var previews: some View {
        CharacterSheet(race: Human(), playerClass: Rogue(skillPoints: 5, race: SketchyRaceBase())) // Pass mock instances here
    }
}
