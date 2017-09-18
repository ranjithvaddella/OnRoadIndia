//
//  Info.swift
//  OnRoadIndia
//
//  Created by Ranjith Vaddella on 10/18/16.
//  Copyright © 2016 SRApps. All rights reserved.
//

import UIKit

class Info: UITableViewController {

    var infSign: [String] = ["Park This Side",
                             "Park Both Sides",
                             "Cycle Stand",
                             "Rickshaw_Stand",
                             "Parking lot Schooters and Motorcycle",
                             "Auto Stand",
                             "Taxi Stand",
                             "Flood Guage",
                             "No Through Side Road",
                             "No Through Road",
                             "First Aid Post",
                             "Hospital",
                             "Light Refreshments",
                             "Eating Palce",
                             "Resting Place",
                             "Public Telephone",
                             "Petrol Pump",
                             "Advance Direction Sign",
                             "Reassurance Sign",
                             "Place Identification Sign",
                             "Destination Sign",
                             "Direction Sign"]
    var infSignImage : [UIImage] = [#imageLiteral(resourceName: "Park_This_Side"),
                                    #imageLiteral(resourceName: "Park_Both_Sides"),
                                    #imageLiteral(resourceName: "Cycle_Stand"),
                                    #imageLiteral(resourceName: "Rickshaw_Stand"),
                                    #imageLiteral(resourceName: "Parking_Scooters_MC"),
                                    #imageLiteral(resourceName: "Auto_Stand"),
                                    #imageLiteral(resourceName: "Taxi_Stand"),
                                    #imageLiteral(resourceName: "Flood_Guage"),
                                    #imageLiteral(resourceName: "No_Through_Side_Road"),
                                    #imageLiteral(resourceName: "No_Through_Road"),
                                    #imageLiteral(resourceName: "First_Aid_Post"),
                                    #imageLiteral(resourceName: "Hospital"),
                                    #imageLiteral(resourceName: "Light_Refreshments"),
                                    #imageLiteral(resourceName: "Eating_Place"),
                                    #imageLiteral(resourceName: "Resting_Place"),
                                    #imageLiteral(resourceName: "Public_Telephone"),
                                    #imageLiteral(resourceName: "Petrol_Pump"),
                                    #imageLiteral(resourceName: "Advance_Direction_Sign"),
                                    #imageLiteral(resourceName: "Reassurance_Sign"),
                                    #imageLiteral(resourceName: "Place_Identification_Sign"),
                                    #imageLiteral(resourceName: "Destination_Sign"),
                                    #imageLiteral(resourceName: "Direction_Sign")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return infSign.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Basic", for: indexPath)
        cell.textLabel?.numberOfLines=0
        cell.textLabel?.text = infSign[indexPath.row]
        cell.textLabel?.font = UIFont (name: "Times", size: 20)
        cell.imageView?.image = infSignImage[indexPath.row]
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
