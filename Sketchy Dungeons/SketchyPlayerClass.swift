//
//  SketchyPlayerClass.swift
//  Sketchy Dungeons
//
//  Created by Thomas Jadie Reeves on 5/27/23.
//

import Foundation

class SketchyPlayerClass: SketchyRaceBase {
    var className: String
    
    init(className: String) {
        self.className = className
    }
}

class Rogue: SketchyPlayerClass {
    var hitDie: Int
    var skillPoints: Int
    
    init(skillPoints: Int) {
        self.hitDie = Int.random(in: 1...6)
        self.skillPoints = skillPoints
        super.init(className: "Rogue")
    }
    
    func backstab() -> Int {
        let damage = brains * 2
        return damage
    }
}

    class Caster {
        // Add properties and methods specific to the Caster class
    }

    class Fighter {
        // Add properties and methods specific to the Fighter class
    }
