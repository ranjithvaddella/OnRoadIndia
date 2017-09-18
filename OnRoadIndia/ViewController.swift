//
//  ViewController.swift
//  OnRoadIndia
//
//  Created by Ranjith Vaddella on 10/8/16.
//  Copyright © 2016 SRApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var onRoadIndia = "On Road India"
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = onRoadIndia
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   /* @IBAction func RoadSense(_ sender: AnyObject) {
        func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let dest = segue.destination as? RoadSense {
                dest.navigationController?.title = "Road Sense"
            }
        }
    } */
    

}

