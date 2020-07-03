//
//  Planet.swift
//  SpaceScreens
//
//  Created by Jillian Dlouhy on 7/2/20.
//  Copyright © 2020 Jillian Dlouhy. All rights reserved.
//

import Foundation
import UIKit

var planets: [Planet] = []

public class Planet {
    
    var title: String
    var distanceFromSun: Float
    var diameter: Float
    var daysForYear: Float
    var funFact: String
    var link: String?
    var image: UIImage?

    init(title: String, distanceFromSun: Float, diameter: Float, daysForYear: Float, funFact: String, link: String, image: UIImage) {
        self.title = title
        self.distanceFromSun = distanceFromSun
        self.diameter = diameter
        self.daysForYear = daysForYear
        self.funFact = funFact
        self.link = link
        self.image = image
    }
    
}

let mercury = Planet(title: "Mercury", distanceFromSun: 41973000 , diameter: 4879, daysForYear: 87.97, funFact: "Mercury's surface temperature ranges from -173 to 427 degrees Celsius.", link: "https://nineplanets.org/mercury/", image: #imageLiteral(resourceName: "Earth"))

let venus = Planet(title: "Venus", distanceFromSun: 67685000, diameter: 12104, daysForYear: 224.70, funFact: "The first accurate observation of Venus was in 1610 by Galileo Galilei.", link: "https://nineplanets.org/venus/", image: #imageLiteral(resourceName: "Earth"))

/*let earth = Planet(title: "Earth", distanceFromSun: 94508000, diameter: 12742 , daysForYear: 365, funFact: "Around 71% of Earth's surface is covered by water and 29% by land.", link: "https://nineplanets.org/earth/", image: #imageLiteral(resourceName: "Earth"))*/

let mars = Planet(title: "Mars", distanceFromSun: 129800000, diameter: 6805, daysForYear: 686.98, funFact: "Mars has two notable moons, Phobos and Deimos.", link: "https://nineplanets.org/mars/", image: #imageLiteral(resourceName: "Earth"))

let jupiter = Planet(title: "Jupiter", distanceFromSun: 479920000, diameter: 142984, daysForYear: 4332.82, funFact: "Jupiter is the largest planet of the solar system and is twice as massive as all the other planets combined.", link: "https://nineplanets.org/jupiter/", image: #imageLiteral(resourceName: "Earth"))

let saturn = Planet(title: "Saturn", distanceFromSun: 929030000, diameter: 120536, daysForYear: 10756, funFact: "Saturn has the largest planetary rings in the Solar System.", link: "https://nineplanets.org/saturn/", image: #imageLiteral(resourceName: "Earth"))

let uranus = Planet(title: "Uranus", distanceFromSun: 1840100000, diameter: 51118, daysForYear: 30687.15, funFact: "Twenty-seven moons have been discovered orbiting Uranus.", link: "https://nineplanets.org/uranus/", image: #imageLiteral(resourceName: "Earth"))

let neptune = Planet(title: "Neptune", distanceFromSun: 2781600000, diameter: 49528, daysForYear: 60190.03, funFact: "Neptune is an ice giant and has a “rocky”, icy core.", link: "https://nineplanets.org/neptune/", image: #imageLiteral(resourceName: "Earth"))


