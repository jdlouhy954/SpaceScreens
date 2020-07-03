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



