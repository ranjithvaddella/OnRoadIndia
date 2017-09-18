//
//  TrafficFines.swift
//  OnRoadIndia
//
//  Created by Ranjith Vaddella on 10/11/16.
//  Copyright © 2016 SRApps. All rights reserved.
//

import UIKit

class TrafficFines: UITableViewController {
    
    var data = ["Document Related",
                "Driving Related",
                "Road Marking Related",
                "Number Plate Related",
                "Traffic Police Related",
                "Traffic Signal Related",
                "Speed and Overtake Related",
                "Towing Related",
                "Pollution Related",
                "Motor Vehicle Related",
                "Commercial Vehicle Related",
                "Parking Related"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
      self.navigationItem.title = "Traffic Fines"

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Basic", for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        cell.textLabel?.font = UIFont(name: "Times", size: 20)
        
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let selectedRow = tableView.indexPathForSelectedRow?.row
        if let dest = segue.destination as? DetailTrafficFineTVC  {
            dest.bannerTitle = data[selectedRow!]
            dest.navigationItem.title = data[selectedRow!]
        }
    }

  
}
