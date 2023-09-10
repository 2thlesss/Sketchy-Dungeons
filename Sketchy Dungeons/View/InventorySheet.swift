//
//  InventorySheet.swift
//  Sketchy Dungeons
//
//  Created by Thomas Jadie Reeves on 8/23/23.
//

import SwiftUI
import UIKit

struct InventorySheet: View {
    @Environment(\.presentationMode) var presentationMode
    let base : SketchyWeaponBase
    let flavor : SketchyWeaponAttribues
    
    var body: some View {
        
        VStack{
            Text ("Weapon Type : \(base.name)")
            Text ("Base Damage : \(base.damage)")
            Text ("Weapon Damage Type: \(base.damageType)")
            Text ("Magic Type : \(flavor.damageType)")
            Text ("Damage to Evil :\(flavor.damage)")
            
        }
    }
}

struct InventorySheet_Previews: PreviewProvider {
    static var previews: some View {
        InventorySheet(base : sword(), flavor: Holy(weapon: sword()))
    }
}
