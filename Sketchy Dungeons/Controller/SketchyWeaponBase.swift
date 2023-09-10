//
//  SketchyWeaponBase.swift
//  Sketchy Dungeons
//
//  Created by Thomas Jadie Reeves on 5/27/23.
//

import Foundation

class SketchyWeaponBase {
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

class dagger: SketchyWeaponBase {
    init() {
        super.init(name: "Dagger", damage: Int.random(in: 1...4), damageType: "piercing", weight: 1, cost: 2)
    }
}
class staff : SketchyWeaponBase {
    init() {
        super.init(name: "Staff", damage: Int.random(in: 1...6), damageType: "bludgeoning", weight: 4, cost: 2)
    }
}
class sword : SketchyWeaponBase {
    init() {
        super.init(name: "Sword", damage: Int.random(in: 1...8), damageType: "slashing", weight: 6, cost: 10)
    }
}

class longBow : SketchyWeaponBase {
    init() {
        super.init(name: "Long Bow", damage: Int.random(in:1...8), damageType: "piercing", weight: 2, cost: 25)
    }
}
class greatSword : SketchyWeaponBase {
    init() {
        super.init(name: "Great Sword", damage: Int.random(in: 1...12), damageType: "slashing", weight: 10, cost: 50)
    }
}

class battleAxe : SketchyWeaponBase {
    init() {
        super.init(name: "Battle Axe", damage: (Int.random(in: 1...6)) + (Int.random(in: 1...6)), damageType: "slashing", weight: 4, cost: 10)
    }
}

extension SketchyWeaponBase {
    static var allWeaponTypes: [SketchyWeaponBase] = [
        dagger(),
        staff(),
        sword(),
        longBow(),
        greatSword(),
        battleAxe()
    ]
    
    static func randomWeaponType() -> SketchyWeaponBase {
        return allWeaponTypes.randomElement() ?? defaultWeaponType()
    }
    
    static func defaultWeaponType() -> SketchyWeaponBase {
        return SketchyWeaponBase(name: "Newbie Club", damage: 1, damageType: "unknown", weight: 1, cost: 1)
    }
}
// use let randomWeapon = SketchyWeaponBase.randomWeaponType() to call random weapons
