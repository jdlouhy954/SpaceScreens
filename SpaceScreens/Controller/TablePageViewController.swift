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
    }
    
    
    
    //MARK: - Other Methods
    override func viewWillAppear(_ animated: Bool) {
        let planet1 = Planet(title: "Earth", distanceFromSun: 94.508 /*million miles*/, diameter: 7917.5 /*miles*/, daysForYear: 365.25, funFact: "This is the only planet not named after a Roman Deity", link: "tempLink", image: #imageLiteral(resourceName: "Earth"))
        planets.append(planet1)
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
