//
//  SketchyRaceBase.swift
//  Sketchy Dungeons
//
//  Created by Thomas Jadie Reeves on 5/27/23.
//
import Foundation
import UIKit

class SketchyRaceBase {
    var name: String = ""
    var heart : Int = 0
    var muscles : Int = 0
    var brains : Int = 0
    var luck : Int = 0
    var hitPoints : Int = 0
    var armor : Int = 0
    
    
    init(){
        
    }
}

func atkRoll(heart: Int, muscles: Int) -> Int {
    let roll = Int.random(in: 1...20)
    let atk = roll + muscles
    return atk

}


class Human: SketchyRaceBase {
    override init() {
        super.init()
        name = "Human"
        heart = Int.random(in: 1...6)
        muscles = Int.random(in: 1...6)
        brains = Int.random(in: 1...6)
        luck = Int.random(in: 1...6) + Int.random(in: 1...6)
        hitPoints = Int(Double(heart) + Double(muscles) / 2.0)
        armor = Int(Double(brains) + Double(muscles)/2.0)
    }
}

class Dwarf: SketchyRaceBase{
    override init() {
        super.init()
        name = "Dwarf"
        heart = Int.random(in: 1...6)+2
        muscles = Int.random(in: 1...6)
        brains = Int.random(in: 1...6)
        luck = Int.random(in: 1...6)
        hitPoints = Int(Double(heart) + Double(muscles) / 2.0)
        armor = Int(Double(brains) + Double(muscles)/2.0)
        
    }
}
class Elf: SketchyRaceBase{
    override init() {
        super.init()
        name = "Elf"
        heart = Int.random(in: 1...6)
        muscles = Int.random(in: 1...6)
        brains = Int.random(in: 1...6)+2
        luck = Int.random(in: 1...6)
        hitPoints = Int(Double(heart) + Double(muscles) / 2.0)
        armor = Int(Double(brains) + Double(muscles)/2.0)
        
    }
}
class HalfOrc: SketchyRaceBase{
    override init() {
        super.init()
        name = "Half-Orc"
        heart = Int.random(in: 1...6)+2
        muscles = Int.random(in: 1...6)
        brains = Int.random(in: 1...6)
        luck = Int.random(in: 1...6)
        hitPoints = Int(Double(heart) + Double(muscles) / 2.0)
        armor = Int(Double(brains) + Double(muscles)/2.0)
        
    }
}

class Halfling: SketchyRaceBase{
    override init() {
        super.init()
        name = "Halfling"
        heart = Int.random(in: 1...6)+1
        muscles = max(1, Int.random(in: 1...6)-1)
        brains = Int.random(in: 1...6)+1
        luck = Int.random(in: 1...6)+1
        hitPoints = Int(Double(heart) + Double(muscles) / 2.0)
        armor = Int(Double(brains) + Double(muscles)/2.0)
        
    }
}
class Undead: SketchyRaceBase{
    override init() {
        super.init()
        name = "Undead"
        heart = max(1, Int.random(in: 1...6)-2)
        muscles = Int.random(in: 1...6)
        brains = max(1, Int.random(in: 1...6)-2)
        luck = max(1, Int.random(in: 1...6)-2)
        hitPoints = Int(Double(heart) + Double(muscles) / 2.0)
        armor = Int(Double(brains) + Double(muscles)/2.0)
    }
}
class Beast: SketchyRaceBase{
    override init() {
        super.init()
        name = "Beast"
        heart = Int.random(in: 1...6)+2
        muscles = Int.random(in: 1...6)+2
        brains = max(1, Int.random(in: 1...6)-2)
        luck = max(1, Int.random(in: 1...6)-2)
        hitPoints = Int(Double(heart) + Double(muscles) / 2.0)
        armor = Int(Double(brains) + Double(muscles)/2.0)
        
    }
}
class Dragon: SketchyRaceBase{
    override init() {
        super.init()
        name = "Dragon"
        heart = Int.random(in: 4...8)+2
        muscles = Int.random(in: 4...8)+2
        brains = Int.random(in: 4...8)+2
        luck = Int.random(in: 4...8)+2
        hitPoints = Int(Double(heart) + Double(muscles) / 2.0)
        armor = Int(Double(brains) + Double(muscles)/2.0) + 4
        
    }
    func breathAttack() -> Int {
        let roll = Int.random(in: 1...20)
        let atk = roll + brains
        return atk
    }
    func biteatk() -> Int {
        let roll = Int.random(in: 1...20)
        let atk = roll + muscles
        return atk
    }
    func clawatk() -> Int {
        let roll = Int.random(in: 1...20)
        let atk = roll + muscles
        return atk
    }
    func tailatk() -> Int {
        let roll = Int.random(in: 1...20)
        let atk = roll + muscles
        return atk
        
    }
}
class Demon: SketchyRaceBase{
    override init() {
        super.init()
        name = "Demon"
        heart = Int.random(in: 1...6)+2
        muscles = Int.random(in: 1...6)+2
        brains = Int.random(in: 1...6)+2
        luck = Int.random(in: 1...6)+2
        hitPoints = Int(Double(heart) + Double(muscles) / 2.0)
        armor = Int(Double(brains) + Double(muscles)/2.0)
        
    }
}
class Giant: SketchyRaceBase{
    override init() {
        super.init()
        name = "Giant"
        heart = Int.random(in: 1...6)+2
        muscles = Int.random(in: 1...6)+2
        brains = max(1, Int.random(in: 1...6)-2)
        luck = max(1, Int.random(in: 1...6)-2)
        hitPoints = Int(Double(heart) + Double(muscles) / 2.0) + 4
        armor = Int(Double(brains) + Double(muscles)/2.0) + 4
        
    }
}



    




