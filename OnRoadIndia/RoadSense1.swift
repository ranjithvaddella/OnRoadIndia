//
//  RoadSense1.swift
//  OnRoadIndia
//
//  Created by Ranjith Vaddella on 10/23/16.
//  Copyright © 2016 SRApps. All rights reserved.
//

import UIKit

class RoadSense1: UITableViewController {

    var roadSenseHints : [String] = [
        "Keep on your left, allowing the vehicles from the opposite direction to pass.",
        "Give way to traffic on your right, especially at road junctions and round abouts.",
        "While turning either left or right, give way to vehicles going straight.",
        "While turning left, keep to the left side and turn close to the left side of the road to  which you enter.",
        "Slow down at the junctions, intersections and pedestrian crossings. Also slow down near school zones, temple areas etc., where a lot of pedestrians and vehicle traffic move. Give signals before you make any manoeuvre, indicating your intention, so that the other road users can adjust accordingly",
        "At junctions, do not block the free lefts",
        "In case traffic jams, be patient. Do not cross the median and block the opposite lane.",
        "Always use a helmet if on a two-wheeler and always check that the strap is fixed properly.",
        "Stick to the given speed limit and remember that speed limit is related to the traffic condition.",
        "Keep enough distance from the vehicle ahead to avoid collision.",
        "Yellow lines should not be crossed under any condition.",
        "At junctions or intersections, never park the vehicle beyond the stop line.",
        "At pedestrian crossings always remember that the pedestrian has the right of way.",
        "At the signal, do not stop your vehicle on the Pedestrian Crossing.",
        "Two-wheelers are meant only for two. Third person is not allowed, even children.",
        "Do not move your vehicle on the amber light. Wait for the light to turn green.",
        "Overtake only from the right side of a vehicle. Never overtake on bridges, narrow roads, junctions, school zones and pedestrian crossings.",
        "Do not drive in a zig-zag manner.",
        "Do not honk and create noise pollution",
        "Do not spit on the roads"]
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return roadSenseHints.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Basic")
        cell?.textLabel?.text = roadSenseHints[indexPath.row]
        cell?.textLabel?.numberOfLines = 0
        //tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 40
        cell?.textLabel?.font = UIFont (name: "Avenir", size: 22)
        return cell!
    }
    
}
