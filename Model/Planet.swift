//
//  Planet.swift
//  SpaceScreens
//
//  Created by Jillian Dlouhy on 7/2/20.
//  Copyright © 2020 Jillian Dlouhy. All rights reserved.
//

import Foundation


public class Planet {
    
    let title: String
    let distanceFromSun: Float
    let diameter: Float
    let daysForYear: Float
    let funFact: String
    
    init(title: String, distanceFromSun: Float, diameter: Float, daysForYear: Float, funFact: String) {
        self.title = title
        self.distanceFromSun = distanceFromSun
        self.diameter = diameter
        self.daysForYear = daysForYear
        self.funFact = funFact
    }
    
}


let mercury = Planet(title: "Mercury", distanceFromSun: 1, diameter: 10, daysForYear: 10, funFact: "hola")

let venus = Planet(title: "Venus", distanceFromSun: 11, diameter: 11, daysForYear: 11, funFact: "hi")

let earth = Planet(title: "Earth", distanceFromSun: 12, diameter: 12, daysForYear: 365, funFact: "We live here")

let mars = Planet(title: "Mars", distanceFromSun: 13, diameter: 13, daysForYear: 13, funFact: "adios")

let jupiter = Planet(title: "Jupiter", distanceFromSun: 14, diameter: 14, daysForYear: 14, funFact: "bye")

let saturn = Planet(title: "Saturn", distanceFromSun: 15, diameter: 15, daysForYear: 15, funFact: "heyo")

let uranus = Planet(title: "Uranus", distanceFromSun: 16, diameter: 16, daysForYear: 16, funFact: "hiya")

let neptune = Planet(title: "Neptune", distanceFromSun: 17, diameter: 17, daysForYear: 17, funFact: "buenas dias")


