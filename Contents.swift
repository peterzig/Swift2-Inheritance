//: Playground - noun: a place where people can play

import UIKit

class Person {
    var eyeColor = "Blue"
    var name: String
    var speed = "15 km/h"
    var weight = "75 kg"
    
    init(name: String){
        self.name = name
    }
    
    func catchPhrase() -> String{
        return "Hi, I am person."
    }
}

var jon = Person(name: "Jon")

class Animorph: Person { //Animorph
    
    var animalType = "Dog"
    
    convenience init(type: String, name: String){
        self.init(name: name)
        self.animalType = type
        self.speed = "50 km/h"
    }
    
    override func catchPhrase() -> String {
        return "I can turn into an animal!"
    }
    
}

print(jon.eyeColor)
print(jon.catchPhrase())

var dolphin = Animorph(type: "Dolphin", name: "Peter")

print(dolphin.eyeColor)
print(dolphin.catchPhrase())

class SuperHero: Person {
    var specialPower = "Laser Eyes"
    var backStory = "Lost both parents and now plans revenge"
    
    convenience init(name: String, _weight: String){
        self.init(name: name)
        weight = _weight
    }
    
    override func catchPhrase() -> String {
        return "I want my parents back, Mr.Greedy"
    }
}

var superBlaster = SuperHero(name:"Super Blaster", _weight: "120 kg")

//Inheritance in practice
print(superBlaster.catchPhrase())
print(dolphin.catchPhrase())
print(jon.catchPhrase())

//How Swift2 functions Inherit

//UIView -> UIImageView
//UIView -> UIButton
//UIView -> UILabel