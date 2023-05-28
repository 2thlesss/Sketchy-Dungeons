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
    var hitPoints : Int = 0
    var armor : Int = 0
    var heart : Int = 0
    var muscles : Int = 0
    var brains : Int = 0
    var luck : Int = 0
    
    init(){
        
    }
}

func atkRoll(heart: Int, muscles: Int) -> Int {
    let roll = Int.random(in: 1...20)
    let atk = roll + muscles
    return atk
}

class Human: SketchyRaceBase{
    override init() {
        super.init()
        name = "Human"
        hitPoints = Int(Double(heart) + Double(muscles) / 2.0)
        armor = Int(Double(brains) + Double(muscles)/2.0)
        heart = Int.random(in: 1...6)
        muscles = Int.random(in: 1...6)
        brains = Int.random(in: 1...6)
        luck = Int.random(in: 1...6) + Int.random(in: 1...6)
    }
}

class Dwarf: SketchyRaceBase{
    override init() {
        super.init()
        name = "Dwarf"
        hitPoints = Int(Double(heart) + Double(muscles) / 2.0)
        armor = Int(Double(brains) + Double(muscles)/2.0)
        heart = Int.random(in: 1...6)+2
        muscles = Int.random(in: 1...6)
        brains = Int.random(in: 1...6)
        luck = Int.random(in: 1...6)
    }
}
class Elf: SketchyRaceBase{
    override init() {
        super.init()
        name = "Elf"
        hitPoints = Int(Double(heart) + Double(muscles) / 2.0)
        armor = Int(Double(brains) + Double(muscles)/2.0)
        heart = Int.random(in: 1...6)
        muscles = Int.random(in: 1...6)
        brains = Int.random(in: 1...6)+2
        luck = Int.random(in: 1...6)
    }
}
class HalfOrc: SketchyRaceBase{
    override init() {
        super.init()
        name = "Half-Orc"
        hitPoints = Int(Double(heart) + Double(muscles) / 2.0)
        armor = Int(Double(brains) + Double(muscles)/2.0)
        heart = Int.random(in: 1...6)+2
        muscles = Int.random(in: 1...6)
        brains = Int.random(in: 1...6)
        luck = Int.random(in: 1...6)
    }
}

class Halfling: SketchyRaceBase{
    override init() {
        super.init()
        name = "Halfling"
        hitPoints = Int(Double(heart) + Double(muscles) / 2.0)
        armor = Int(Double(brains) + Double(muscles)/2.0)
        heart = Int.random(in: 1...6)+1
        muscles = Int.random(in: 1...6)-1
        brains = Int.random(in: 1...6)+1
        luck = Int.random(in: 1...6)+1
    }
}
class Undead: SketchyRaceBase{
    override init() {
        super.init()
        name = "Undead"
        hitPoints = Int(Double(heart) + Double(muscles) / 2.0)
        armor = Int(Double(brains) + Double(muscles)/2.0)
        heart = Int.random(in: 1...6)-2
        muscles = Int.random(in: 1...6)
        brains = Int.random(in: 1...6)-2
        luck = Int.random(in: 1...6)-2
    }
}
class Beast: SketchyRaceBase{
    override init() {
        super.init()
        name = "Beast"
        hitPoints = Int(Double(heart) + Double(muscles) / 2.0)
        armor = Int(Double(brains) + Double(muscles)/2.0)
        heart = Int.random(in: 1...6)+2
        muscles = Int.random(in: 1...6)+2
        brains = Int.random(in: 1...6)-2
        luck = Int.random(in: 1...6)-2
    }
}
class Dragon: SketchyRaceBase{
    override init() {
        super.init()
        name = "Dragon"
        hitPoints = Int(Double(heart) + Double(muscles) / 2.0)
        armor = Int(Double(brains) + Double(muscles)/2.0) + 4
        heart = Int.random(in: 4...8)+2
        muscles = Int.random(in: 4...8)+2
        brains = Int.random(in: 4...8)+2
        luck = Int.random(in: 4...8)+2
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
        hitPoints = Int(Double(heart) + Double(muscles) / 2.0)
        armor = Int(Double(brains) + Double(muscles)/2.0)
        heart = Int.random(in: 1...6)+2
        muscles = Int.random(in: 1...6)+2
        brains = Int.random(in: 1...6)+2
        luck = Int.random(in: 1...6)+2
    }
}
class Giant: SketchyRaceBase{
    override init() {
        super.init()
        name = "Giant"
        hitPoints = Int(Double(heart) + Double(muscles) / 2.0) + 4
        armor = Int(Double(brains) + Double(muscles)/2.0) + 4
        heart = Int.random(in: 1...6)+2
        muscles = Int.random(in: 1...6)+2
        brains = Int.random(in: 1...6)-2
        luck = Int.random(in: 1...6)-2
    }
}



    




