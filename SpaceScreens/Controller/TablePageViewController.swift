//
//  TablePageViewController.swift
//  SpaceScreens
//
//  Created by Ian Fuelberth on 7/1/20.
//  Copyright © 2020 Jillian Dlouhy. All rights reserved.
//

import UIKit

class TablePageViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var mainTableView: UITableView!
    
    var selectedPlanet: Planet?
    
    //MARK: - UITableViewDataSource Methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return planets.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = mainTableView.dequeueReusableCell(withIdentifier: "cellid")
        cell?.textLabel?.text = planets[indexPath.row].title
        cell?.imageView?.image = planets[indexPath.row].image
        return cell!
    }
    
    //MARK: - UITableViewDelegate Methods
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedPlanet = planets[indexPath.row]
        performSegue(withIdentifier: "toInfoPage", sender: self)
    }
    
    
    
    //MARK: - Other Methods
    override func viewWillAppear(_ animated: Bool) {
        /*let planet1 = Planet(title: "Earth", distanceFromSun: 94.508 /*million miles*/, diameter: 7917.5 /*miles*/, daysForYear: 365.25, funFact: "This is the only planet not named after a Roman Deity", link: "tempLink", image: #imageLiteral(resourceName: "Earth"))
        planets.append(planet1)*/
    
        let mercury = Planet(title: "Mercury", distanceFromSun: 41973000 , diameter: 4879, daysForYear: 87.97, funFact: "Mercury's surface temperature ranges from -173 to 427 degrees Celsius.", link: "https://nineplanets.org/mercury/", image: #imageLiteral(resourceName: "Pluto"))

        let venus = Planet(title: "Venus", distanceFromSun: 67685000, diameter: 12104, daysForYear: 224.70, funFact: "The first accurate observation of Venus was in 1610 by Galileo Galilei.", link: "https://nineplanets.org/venus/", image: #imageLiteral(resourceName: "Venus"))

        let earth = Planet(title: "Earth", distanceFromSun: 94508000, diameter: 12742 , daysForYear: 365, funFact: "Around 71% of Earth's surface is covered by water and 29% by land.", link: "https://nineplanets.org/earth/", image: #imageLiteral(resourceName: "Earth"))

        let mars = Planet(title: "Mars", distanceFromSun: 129800000, diameter: 6805, daysForYear: 686.98, funFact: "Mars has two notable moons, Phobos and Deimos.", link: "https://nineplanets.org/mars/", image: #imageLiteral(resourceName: "Mars"))

        let jupiter = Planet(title: "Jupiter", distanceFromSun: 479920000, diameter: 142984, daysForYear: 4332.82, funFact: "Jupiter is the largest planet of the solar system and is twice as massive as all the other planets combined.", link: "https://nineplanets.org/jupiter/", image: #imageLiteral(resourceName: "Jupiter"))

        let saturn = Planet(title: "Saturn", distanceFromSun: 929030000, diameter: 120536, daysForYear: 10756, funFact: "Saturn has the largest planetary rings in the Solar System.", link: "https://nineplanets.org/saturn/", image: #imageLiteral(resourceName: "Saturn"))

        let uranus = Planet(title: "Uranus", distanceFromSun: 1840100000, diameter: 51118, daysForYear: 30687.15, funFact: "Twenty-seven moons have been discovered orbiting Uranus.", link: "https://nineplanets.org/uranus/", image: #imageLiteral(resourceName: "Uranus"))

        let neptune = Planet(title: "Neptune", distanceFromSun: 2781600000, diameter: 49528, daysForYear: 60190.03, funFact: "Neptune is an ice giant and has a “rocky”, icy core.", link: "https://nineplanets.org/neptune/", image: #imageLiteral(resourceName: "Neptune"))
    
        planets.append(mercury)
        planets.append(venus)
        planets.append(earth)
        planets.append(mars)
        planets.append(jupiter)
        planets.append(saturn)
        planets.append(uranus)
        planets.append(neptune)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        mainTableView.delegate = self
        mainTableView.dataSource = self
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let IPVC = segue.destination as! InfoPageViewController
        IPVC.selectedItem = selectedPlanet
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
