//
//  TablePageViewController.swift
//  SpaceScreens
//
//  Created by Ian Fuelberth on 7/1/20.
//  Copyright © 2020 Jillian Dlouhy. All rights reserved.
//

import UIKit
import SafariServices

class InfoPageViewController: UIViewController {

    @IBOutlet weak var FunFactLabel: UILabel!
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var DaysLabel: UILabel!
    @IBOutlet weak var DiameterLabel: UILabel!
    @IBOutlet weak var DistanceLabel: UILabel!
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var LinkButton: UIButton!
    
    
    var selectedItem : Planet?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        FunFactLabel.text = selectedItem?.funFact
        NameLabel.text = selectedItem?.title
        DaysLabel.text = "\(selectedItem?.daysForYear ?? 0)"
        DiameterLabel.text = "\(selectedItem?.diameter ?? 0)"
        DistanceLabel.text =  "\(selectedItem?.distanceFromSun ?? 0)"
        ImageView.image = selectedItem?.image
        
        
        
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func LinkPressed(_ sender: Any) {
        let SFVC = SFSafariViewController(url: URL(string: (selectedItem?.link)!)!)
        SFVC.delegate = self as? SFSafariViewControllerDelegate
        present(SFVC, animated: true, completion: nil)
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
