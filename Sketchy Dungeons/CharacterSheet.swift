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
    let weapon : SketchyWeaponBase
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
            Text ("Weapon : \(weapon.name)")
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
        CharacterSheet(race: Human(), playerClass: Rogue(skillPoints: 5, race: SketchyRaceBase()), weapon: SketchyWeaponBase(name: "Sword" , damage: 0, damageType: "slashing", weight: 0, cost: 0))
    }
}
