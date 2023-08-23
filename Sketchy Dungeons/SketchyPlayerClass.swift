//
//  SketchyPlayerClass.swift
//  Sketchy Dungeons
//
//  Created by Thomas Jadie Reeves on 5/27/23.
//
import Foundation

class SketchyPlayerClass {
    var className: String
    var level: Int = 1
    var hitDie: Int = 0
    var race: SketchyRaceBase?
    
    init(className: String, race: SketchyRaceBase?) {
        self.className = className
        self.race = race
    }
    
}

class Rogue: SketchyPlayerClass {
    init(skillPoints: Int, race: SketchyRaceBase?) {
        super.init(className: "Rogue", race: race)
        hitDie = Int.random(in: 1...6)
    }
    
}
class Caster: SketchyPlayerClass {
    init (skillPoints: Int, race: SketchyRaceBase?){
        super.init(className: "Caster", race: race)
        hitDie = Int.random(in: 1...4)
    }
}

class Fighter : SketchyPlayerClass {
    init (skillPoints: Int, race: SketchyRaceBase?) {
        super.init(className: "Fighter", race: race)
    }
    // i need the class fighter to match the class caster//
}
