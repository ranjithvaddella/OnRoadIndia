//
//  MandatorySignTableViewController.swift
//  OnRoadIndia
//
//  Created by Ranjith Vaddella on 10/10/16.
//  Copyright © 2016 SRApps. All rights reserved.
//

import UIKit
import Foundation

class MandatorySignTableViewController: UITableViewController {

    var manSign : [String] = ["Stop",
                              "No Parking",
                              "No Stopping or Standing",
                              "U-Turn Prohibited",
                              "One Way Signs - Vehicle Prohinited in One Direction",
                              "One Way Signs - Vehicle Prohinited in One Direction",
                              "Straight Prohiited or No Entry",
                              "Vehicle Prohinited in Both Directions",
                              "Right Turn Prohibited",
                              "Left Turn Prohinited",
                              "Overtaking Prohibited",
                              "Pedestrians Prohinited",
                              "Axle Load Limit",
                              "All Vehicles Prohibited",
                              "All Vehicles Prohibited",
                              "Height Limit",
                              "Load Limit",
                              "Horns Prohinited",
                              "Give Away",
                              "Length Limit",
                              "Speed Limit",
                              "Restrictio Ends Sign",
                              "Width Limit",
                              "Trucks Prohibited",
                              "Compulsory Ahead",
                              "Compulsory Ahead or Turn Right",
                              "Compulsory Ahead or Turn Left",
                              "Compulsory Cycle Track",
                              "Compulsory Turn Right Ahead",
                              "Compulsory Turn Left",
                              "Compulsory Keep Left",
                              "Compulsory Sound Horn"]
    var manSignImage : [UIImage] = [#imageLiteral(resourceName: "Stop.jpg"),
                                    #imageLiteral(resourceName: "No_Parking"),
                                    #imageLiteral(resourceName: "No_Stopping_Standing"),
                                    #imageLiteral(resourceName: "No_UTurn"),
                                    #imageLiteral(resourceName: "One_Way1"),
                                    #imageLiteral(resourceName: "One_Way2"),
                                    #imageLiteral(resourceName: "No_Entry"),
                                    #imageLiteral(resourceName: "Vehicle_Prohibited_in_Both_Directions"),
                                    #imageLiteral(resourceName: "No_Right_TUrn"),
                                    #imageLiteral(resourceName: "No_Left_Turn"),
                                    #imageLiteral(resourceName: "No_Overtake"),
                                    #imageLiteral(resourceName: "No_Pedestrians"),
                                    #imageLiteral(resourceName: "Axle_Load_Limit"),
                                    #imageLiteral(resourceName: "All_Vehi_Prohibited1"),
                                    #imageLiteral(resourceName: "All_Veh_Prohibited2"),
                                    #imageLiteral(resourceName: "Height_Limit"),
                                    #imageLiteral(resourceName: "Load_Limit"),
                                    #imageLiteral(resourceName: "Horns_Prohibited"),
                                    #imageLiteral(resourceName: "Giveway"),
                                    #imageLiteral(resourceName: "Length_Limit"),
                                    #imageLiteral(resourceName: "Speed_Limit"),
                                    #imageLiteral(resourceName: "Restriction_End_Sign"),
                                    #imageLiteral(resourceName: "Width_Limit"),
                                    #imageLiteral(resourceName: "No_Trucks"),
                                    #imageLiteral(resourceName: "Compulsory_Ahead"),
                                    #imageLiteral(resourceName: "Compulsory_Ahead_or_Turn_Right"),
                                    #imageLiteral(resourceName: "Compulsory_Ahead_or_Turn_Left"),
                                    #imageLiteral(resourceName: "Compulsory_Cycle_Track"),
                                    #imageLiteral(resourceName: "Compulsory_Turn_Right_Ahead"),
                                    #imageLiteral(resourceName: "Compulsory_Turn_Left"),
                                    #imageLiteral(resourceName: "Compulsory_Keep_Left"),
                                    #imageLiteral(resourceName: "Compulsory_Sound_Horn")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.edgesForExtendedLayout = .all
        self.tableView.contentInset = UIEdgeInsetsMake(0, 0, (self.tabBarController?.tabBar.frame)!.height, 0)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return manSign.count
    }
    

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Basic", for: indexPath)
        cell.textLabel?.text = manSign[indexPath.row]
        cell.textLabel?.font = UIFont (name: "Times", size: 20)
        cell.imageView?.image = manSignImage[indexPath.row]
        cell.textLabel?.numberOfLines=0
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
