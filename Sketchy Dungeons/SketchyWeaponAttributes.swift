//
//  SketchyWeaponAttributes.swift
//  Sketchy Dungeons
//
//  Created by Thomas Jadie Reeves on 5/27/23.
//

import Foundation

class SketchyWeaponAttribues {
    var name: String
    var damage: Int
    var damageType: String
    var weight: Int
    var cost: Int
    
    init(name: String, damage: Int, damageType: String, weight: Int, cost: Int) {
        self.name = name
        self.damage = damage
        self.damageType = damageType
        self.weight = weight
        self.cost = cost
    }
}
class Sharp: SketchyWeaponAttribues {
    init(weapon: SketchyWeaponBase) {
        super.init(name: "Sharp", damage: weapon.damage + 2, damageType: weapon.damageType, weight: weapon.weight, cost: weapon.cost)
    }
}
class Flame : SketchyWeaponAttribues {
    init(weapon: SketchyWeaponBase) {
        super.init(name: "Flame", damage: weapon.damage + Int.random(in: 1...6), damageType: "fire", weight: weapon.weight, cost: weapon.cost)
    }
}
class Ice : SketchyWeaponAttribues {
    init(weapon: SketchyWeaponBase){
        super.init(name: "Ice", damage: weapon.damage + Int.random(in: 1...6), damageType: "ice" , weight: weapon.weight, cost: weapon.cost)
    }
}

class unHoly : SketchyWeaponAttribues {
    init(weapon :SketchyWeaponBase){
    super.init(name: "unHoly", damage: weapon.damage + Int.random(in: 1...6), damageType: "unholy", weight: weapon.weight, cost: weapon.cost)
    }
}

class Holy : SketchyWeaponAttribues {
    init(weapon :SketchyWeaponBase){
    super.init(name: "Holy", damage: weapon.damage + Int.random(in: 1...6), damageType: "holy", weight: weapon.weight, cost: weapon.cost)
    }
}
extension SketchyWeaponAttribues {
    static func defaultAttributeType() -> SketchyWeaponAttribues {
        return SketchyWeaponAttribues(name: "Newbie Power", damage: 1, damageType: "Noob", weight: 5, cost: 1)
    }
}
