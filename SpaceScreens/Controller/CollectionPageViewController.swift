//
//  CollectionPageViewController.swift
//  SpaceScreens
//
//  Created by Ian Fuelberth on 7/1/20.
//  Copyright © 2020 Jillian Dlouhy. All rights reserved.
//

import UIKit

class CollectionPageViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
     var selectedPlanet: Planet?
    
    let images = [#imageLiteral(resourceName: "Mercury-1"),#imageLiteral(resourceName: "Venus-1"),#imageLiteral(resourceName: "Earth-1"),#imageLiteral(resourceName: "Mars-1"),#imageLiteral(resourceName: "Jupiter-1"),#imageLiteral(resourceName: "Saturn-1"),#imageLiteral(resourceName: "Uranus-1"),#imageLiteral(resourceName: "Neptune-1")]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell : CollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.imageView.image = self.images[indexPath.item]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        selectedPlanet = planets[indexPath.item]
        let cell = collectionView.cellForItem(at: indexPath)
        collectionView.deselectItem(at: indexPath, animated: true)
        //selectedPlanet = planets[indexPath.item]
        performSegue(withIdentifier: "toInfoPage", sender: cell)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let IPVC = segue.destination as! InfoPageViewController
        IPVC.selectedPlanet = selectedPlanet
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
