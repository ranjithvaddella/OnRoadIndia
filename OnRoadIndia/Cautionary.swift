//
//  Cautionary.swift
//  OnRoadIndia
//
//  Created by Ranjith Vaddella on 10/10/16.
//  Copyright © 2016 SRApps. All rights reserved.
//

import UIKit

class Cautionary: UITableViewController {
    
    var cauSign : [String] = ["T-Intersection",
                              "Y-Intersection1",
                              "Y-Intersection2",
                              "Y-Intersection3",
                              "Right Hand Curve",
                              "Left Hand Curve",
                              "Left Reverse Bend",
                              "Right Reverse Bend",
                              "Narrow Bridge",
                              "Road Wideness Ahead",
                              "Narrow Road Ahead",
                              "Cross Road",
                              "Predestrian Crossing",
                              "School Ahead",
                              "Steep Ascent",
                              "Steep Descent",
                              "Hump or Rough Road",
                              "Dangerioud Dip",
                              "Gap In Median",
                              "Falling Rocks",
                              "Ferry",
                              "Cycle Crossing",
                              "Roundabout",
                              "Cattle",
                              "Loose Gravel",
                              "Slippery Road",
                              "Side Road Right",
                              "Side Road Left",
                              "Staggered Intersection1",
                              "Staggered Intersection2",
                              "Major Road Ahead2",
                              "Men at Work",
                              "50-100 Meters",
                              "200 Meters",
                              "50-100 Meters",
                              "200 Meters",
                              "Major Road Ahead2",
                              "Right Hair Pin Bend",
                              "Left Hair Pin Bend"]

    var cauSignImage : [UIImage] = [#imageLiteral(resourceName: "T-Intersection"),
                                    #imageLiteral(resourceName: "Y-Intersection1"),
                                    #imageLiteral(resourceName: "Y-Intersection2"),
                                    #imageLiteral(resourceName: "Y-Intersection3"),
                                    #imageLiteral(resourceName: "Right_Hand_Curve"),
                                    #imageLiteral(resourceName: "Left_Hand_Curve"),
                                    #imageLiteral(resourceName: "Left_Reverse_Bend"),
                                    #imageLiteral(resourceName: "Right_Reverse_Bend"),
                                    #imageLiteral(resourceName: "Narrow_Bridge"),
                                    #imageLiteral(resourceName: "Road_Wideness_Ahead"),
                                    #imageLiteral(resourceName: "Narrow_Road_Ahead"),
                                    #imageLiteral(resourceName: "Cross_Road"),
                                    #imageLiteral(resourceName: "Pedestrian_Crossing"),
                                    #imageLiteral(resourceName: "School_Ahead"),
                                    #imageLiteral(resourceName: "Steep_Ascent"),
                                    #imageLiteral(resourceName: "Steep_Descent"),
                                    #imageLiteral(resourceName: "Hump_or_Rough_Road"),
                                    #imageLiteral(resourceName: "Dangerous_Dip"),
                                    #imageLiteral(resourceName: "Gap_In_Median"),
                                    #imageLiteral(resourceName: "Falling_Rocks"),
                                    #imageLiteral(resourceName: "Ferry"),
                                    #imageLiteral(resourceName: "Cycle Crossing"),
                                    #imageLiteral(resourceName: "Roundabout"),
                                    #imageLiteral(resourceName: "Cattle"),
                                    #imageLiteral(resourceName: "Loose_Gravel"),
                                    #imageLiteral(resourceName: "Slippery_Road"),
                                    #imageLiteral(resourceName: "Side_Road_Right"),
                                    #imageLiteral(resourceName: "Side_Road_Left"),
                                    #imageLiteral(resourceName: "Staggeered_Intersection1"),
                                    #imageLiteral(resourceName: "Staggered_Intersection2"),
                                    #imageLiteral(resourceName: "Major_Road_Ahead2"),
                                    #imageLiteral(resourceName: "Men_At_Work"),
                                    #imageLiteral(resourceName: "50-100_Meters"),
                                    #imageLiteral(resourceName: "200_Meters"),
                                    #imageLiteral(resourceName: "50-100_Meters2"),
                                    #imageLiteral(resourceName: "200_Meters2"),
                                    #imageLiteral(resourceName: "Major_Road_Ahead21"),
                                    #imageLiteral(resourceName: "Right_Hair_Pin_Bend"),
                                    #imageLiteral(resourceName: "Left_Hari_Pin_Bend")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return cauSign.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Basic", for: indexPath)
        cell.textLabel?.numberOfLines=0
        cell.textLabel?.text = cauSign[indexPath.row]
        cell.textLabel?.font = UIFont (name: "Times", size: 20)
        cell.imageView?.image = cauSignImage[indexPath.row]
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 44
            return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
