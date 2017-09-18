//
//  DetailTrafficFineTVC.swift
//  OnRoadIndia
//
//  Created by Ranjith Vaddella on 10/13/16.
//  Copyright © 2016 SRApps. All rights reserved.
//

import UIKit

class DetailTrafficFineTVC: UITableViewController {
    var bannerTitle: String? = ""
    var docOffence = ["M.V.Act. 181\n\n Rs. 500/- for two, three, four & Six wheelers", "M.V.Act. 181\n\n Driving without Registration", "M.V.Act. 181\n\n Driving without Permit", "M.V.Act. 181\n\n Driving without Insurance", "M.V.Act. 181\n\n Driving at less than prescribed age"]
    var driOffence = ["Violation of No Entry", "Violation of One Way", "Violation of U-Turn", "Violation of Prohinited Area", "Violation of Prohinited Area"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        if bannerTitle! == "Document Related"{
            return 5
        } else if bannerTitle! == "Driving Related"{
            return 18
        } else if bannerTitle! == "Road Marking Related"{
            return 2
        } else if bannerTitle! == "Number Plate Related"{
            return 1
        } else if bannerTitle! == "Traffic Police Related" {
            return 1
        } else if bannerTitle! == "Traffic Signal Related" {
            return 3
        } else if bannerTitle! == "Speed and Overtake Related" {
            return 4
        } else if bannerTitle! == "Towing Related" {
            return 4
        } else if bannerTitle! == "Pollution Related" {
            return 1
        } else if bannerTitle! == "Motor Vehicle Related" {
            return 2
        } else if bannerTitle! == "Commercial Vehicle Related" {
            return 3
        } else {
            return 2
        }
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
        
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DetailFine", for: indexPath)
        
        cell.textLabel?.numberOfLines = 0
        cell.textLabel?.font = UIFont(name: "Times", size: 16)
        if bannerTitle! == "Document Related"{
            if indexPath.section == 0 {
                cell.textLabel?.text = "M.V.Act. 181\n\nRs. 500/- for two, three, four & Six wheelers"
            } else if indexPath.section == 1 {
                cell.textLabel?.text = "M.V.Act. 192(1)\n\nRs. 2000/- for two, three, four & Six wheelers"
            } else if indexPath.section == 2 {
                cell.textLabel?.text = "M.V.Act. 192(A)\n\nCourt or RTA"
            } else if indexPath.section == 3 {
                cell.textLabel?.text = "M.V.Act. 196\n\nRs. 1000/- for two, three, four & Six wheelers"
            } else {
                cell.textLabel?.text = "M.V.Act. 181\n\nRs. 500/- for two, three, four & Six wheelers"
            }
            
        } else if bannerTitle! == "Driving Related" {
            if indexPath.section == 0 {
                cell.textLabel?.text = "M.V.Act. 177\n\nRs. 200/- for two, three, four & Six wheelers"
            } else if indexPath.section == 1 {
                cell.textLabel?.text = "M.V.Act. 177\n\nRs. 200/- for two, three, four & Six wheelers"
            } else if indexPath.section == 2 {
                cell.textLabel?.text = "M.V.Act. 177\n\nRs. 200/- for two, three, four & Six wheelers"
            } else if indexPath.section == 3 {
                cell.textLabel?.text = "M.V.Act. 177\n\nRs. 200/- for two, three, four & Six wheelers"
            }else if indexPath.section == 4 {
                cell.textLabel?.text = "M.V.Act. 177\n\nRs. 200/- for two, three, four & Six wheelers"
            } else if indexPath.section == 5 {
                cell.textLabel?.text = "M.V.Act. 184(b)\n\nRs. 1000/- for two, three, four & Six wheelers"
            } else if indexPath.section == 6 {
                cell.textLabel?.text = "M.V.Act. 184(b)\n\nRs. 1000/- for two, three, four & Six wheelers"
            } else if indexPath.section == 7 {
                cell.textLabel?.text = "279 IPC \n\nCourt"
            } else if indexPath.section == 8 {
                cell.textLabel?.text = "M.V.Act. 123(ii)\n\nRTC Mobile Court OR RTA, fine from Rs. 50/- to Rs. 200/"
            } else if indexPath.section == 9 {
                cell.textLabel?.text = "M.V.Act. 186\n\nRs. 200/- "
            } else if indexPath.section == 10 {
                cell.textLabel?.text = "M.V.Act. 187\n\nCourt"
            } else if indexPath.section == 11 {
                cell.textLabel?.text = "M.V.Act. 190(i)\n\nCourt"
            } else if indexPath.section == 12 {
                cell.textLabel?.text = "41(i) Hyderabad City Police Act\n\nTraffic crane lifting charges for two/three wheelers Rs. 150/-, four wheeler Rs. 200/- and Six wheelers Rs. 300/- to 600/-"
            } else if indexPath.section == 13 {
                cell.textLabel?.text = "M.V.Act. 129/177\n\nRs. 200/- "
            } else if indexPath.section == 14 {
                cell.textLabel?.text = "M.V.Act. 194\n\nCollecting by RTA@ Rs. 1000/- per ton or court"
            } else if indexPath.section == 15 {
                cell.textLabel?.text = "M.V.Act. 197\n\nRTO takes action on permit condition (check report)"
            } else if indexPath.section == 16 {
                cell.textLabel?.text = "M.V.Act. 198\n\nRs. 100/- by RTA"
            } else {
                cell.textLabel?.text = "M.V.Act. 180\n\nRs. 1000/- for two, three, four & Six wheelers"
            }
        }else if bannerTitle! == "Road Marking Related" {
            if indexPath.section == 0 {
               cell.textLabel?.text = "M.V.Act. 177\n\nRs. 200/- for two, three, four & Six wheelers"
            } else if indexPath.section == 1 {
                cell.textLabel?.text = "M.V.Act. 181\n\nRs. 200/- for two, three, four & Six wheelers"
            }
            
        } else if bannerTitle! == "Number Plate Related" {
            cell.textLabel?.text = "M.V.Act. 80(a)\n\nRs. 200/- for two, three, four & Six wheelers"
        } else if bannerTitle! == "Traffic Police Related" {
            cell.textLabel?.text = "M.V.Act. 132\n\nRs. 200/- for two, three, four & Six wheelers"
        } else if bannerTitle! == "Traffic Signal Related" {
            if indexPath.section == 0 {
                cell.textLabel?.text = "M.V.Act. 184\n\nRs. 1000/- for two, three, four & Six wheelers"
            } else if indexPath.section == 1 {
                cell.textLabel?.text = "M.V.Act. 177\n\nRs. 100 to Rs. 200/- for two/three wheelers.\n\n Rs. 200/- for four/six wheelers"
            } else {
                cell.textLabel?.text = "M.V.Act. 177\n\nRs. 200/- for two, three, four & Six wheelers"
            }
        } else if bannerTitle! == "Speed and Overtake Related" {
            if indexPath.section == 0 {
                cell.textLabel?.text = "M.V.Act. 184(a)\n\nRs. 1000/- for any Vehicle"
            } else if indexPath.section == 1 {
                cell.textLabel?.text = "M.V.Act. 185\n\nCourt"
            } else if indexPath.section == 2 {
                cell.textLabel?.text = "M.V.Act. 182\n\nCourt"
            } else {
                cell.textLabel?.text = "M.V.Act. 187\n\nCourt"
            }
        } else if bannerTitle! == "Towing Related" {
            if indexPath.section == 0 {
                cell.textLabel?.text = "Section 41(i) C.P. Act\n\nRs. 150"
            } else if indexPath.section == 1 {
                cell.textLabel?.text = "Section 41(i) C.P. Act\n\nRs. 200"
            } else if indexPath.section == 2 {
                cell.textLabel?.text = "Section 41(i) C.P. Act\n\nRs. 300"
            } else {
                cell.textLabel?.text = "Section 41(i) C.P. Act\n\nRs. 600"
            }
        } else if bannerTitle! == "Pollution Related" {
            cell.textLabel?.text = "M.V.Act. 190(i)\n\nRs. 1000/- for two, three, four & Six wheelers"
        } else if bannerTitle! == "Motor Vehicle Related" {
            if indexPath.section == 0 {
                cell.textLabel?.text = "M.V.Act. 422(i)\n\nRs. 200/- for two, three, four & Six wheelers"
            } else {
                cell.textLabel?.text = "M.V.Act. 422(ii)\n\nRs. 500/- for two, three, four & Six wheelers"
            }
        } else if bannerTitle! == "Commercial Vehicle Related" {
            if indexPath.section == 0 {
                cell.textLabel?.text = "Sec 199/177 M.V.Act\n\nRs. 200/- for two, three, four & Six wheelers"
            } else if indexPath.section == 1 {
                cell.textLabel?.text = "R. 36(vii)/S 177\n\nRs. 200/- for two, three, four & Six wheelers"
            } else {
                cell.textLabel?.text = "R. 32(vii)/S 177\n\nRs. 100 to 200"
            }
        } else {
            if indexPath.section == 0 {
                cell.textLabel?.text = "M.V.Act. 122,177\n\nRs. 200/- for two, three, four & Six wheelers"
            } else {
                cell.textLabel?.text = "M.V.Act. 122,177\n\nRs. 1000/- for two, three, four & Six wheelers"
            }
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let secHeader = UILabel()
        
        if bannerTitle! == "Document Related" {
            
            if section == 0 {
                secHeader.text = "Driving a vehicle without license"
            } else if section == 1 {
                secHeader.text = "Driving a vehicle without registration"
            } else if section == 2 {
                secHeader.text = "Driving a vehicle without license"
            } else if section == 3 {
                secHeader.text = "Driving a vehicle without insurance"
            } else {
                secHeader.text = "Driving a vehicle at less than prescribed age"
            }
        } else if bannerTitle! == "Driving Related" {
            if section == 0 {
                secHeader.text = "Violation of no entry"
            } else if section == 1 {
                secHeader.text = "Violation of one way"
            } else if section == 2 {
                secHeader.text = "Violation of U-Turn"
            } else if section == 3 {
                secHeader.text = "Offences pertaining to violation of prohibited area"
            } else if section == 4 {
                secHeader.text = "Violation of rules duly promulgated"
            } else if section == 5 {
                secHeader.text = "Violation of prohinited area"
            } else if section == 6 {
                secHeader.text = "Violation of rules duly promulgated"
            } else if section == 7 {
                secHeader.text = "Dangerous, rash and negligent driving"
            } else if section == 8 {
                secHeader.text = "Driving a vehicle dangerously and posing threat to the lives of other people"
            } else if section == 9 {
                secHeader.text = "Travelling on footboard"
            } else if section == 10 {
                secHeader.text = "Driving and Using unsafe vehicles"
            } else if section == 11 {
                secHeader.text = "Posing hazard to traffic by using dilapidated vehicles"
            } else if section == 12 {
                secHeader.text = "Regarding wearing a helmet"
            } else if section == 13 {
                secHeader.text = "To drive overweight vehicle"
            } else if section == 14 {
                secHeader.text = "Violation of rules duly promulgated"
            } else if section == 15 {
                secHeader.text = "To take away vehicle without permission"
            } else if section == 16 {
                secHeader.text = "Unauthorized interference regardign Motor Vehicle"
            } else {
                secHeader.text = "To allow/permit unauthorized person to drive a vehicle"
            }
        } else if bannerTitle! == "Road Marking Related" {
            if section == 0 {
                secHeader.text = "Violation of stop line"
            } else if section == 1 {
                secHeader.text = "Violation of lane"
            }
            
        } else if bannerTitle! == "Number Plate Related" {
            secHeader.text = "Irregular number plate"
        } else if bannerTitle! == "Traffic Police Related" {
            secHeader.text = "Disobeying traffic police officer in uniform"
        } else if bannerTitle! == "Traffic Signal Related" {
            if section == 0 {
                secHeader.text = "Violation of signal jumping"
            } else if section == 1 {
                secHeader.text = "General provision for punishment of offences"
            } else {
                secHeader.text = "Violation of stop signal"
            }
        } else if bannerTitle! == "Speed and Overtake Related" {
            if section == 0 {
                secHeader.text = "Using mobile while driving"
            } else if section == 1 {
                secHeader.text = "Driving vehicle after cosuming intoxicants/substances"
            } else if section == 2 {
                secHeader.text = "Committing fffence pertaining to licenses"
            } else {
                secHeader.text = "Commiting offence related to accident"
            }
        } else if bannerTitle! == "Towing Related" {
            if section == 0 {
                secHeader.text = "Two wheeler"
            } else if section == 1 {
                secHeader.text = "Car, Jeep, Taxi, Auto, Rickshaw"
            } else if section == 2 {
                secHeader.text = "Light Motor Vehicle"
            } else {
                secHeader.text = "Heavy Motor Vehicles"
            }
        } else if bannerTitle! == "Pollution Related" {
            secHeader.text = "Without PUC Certificate"
        } else if bannerTitle! == "Motor Vehicle Related" {
            if section == 0 {
                secHeader.text = "Overloading of Goods vehicles"
            } else {
                secHeader.text = "Carrying Goods in dangerous and hazardous manner"
            }
        } else if bannerTitle! == "Commercial Vehicle Related" {
            if section == 0 {
                secHeader.text = "Playing in No Entry time"
            } else if section == 1 {
                secHeader.text = "Carrying persons Dangerously or carrying persons in Goods vehicles"
            } else {
                secHeader.text = "Overloading of Autos"
            }
        } else {
            if section == 0 {
                secHeader.text = "Parking of vehicles in such a manner which may pose a risk to other vehicles"
            } else {
                secHeader.text = "Illegal parking on public road at No Parking boards"
            }
        }
        
        secHeader.font = UIFont (name: "Times", size: 17)
        secHeader.backgroundColor = UIColor.black
        secHeader.textColor = UIColor.white
        secHeader.lineBreakMode = .byWordWrapping
        secHeader.numberOfLines = 0
        return secHeader
        
        
    }
    
   /* override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        var secHeader = ""
        
        if bannerTitle! == "Document Related" {
            
            if section == 0 {
                secHeader = "Driving a Vehicle without License"
            } else if section == 1 {
                secHeader = "Driving a vehicle without registration"
            } else if section == 2 {
                secHeader = "Driving a vehicle without License"
            } else if section == 3 {
                secHeader = "Driving a vehicle without insurance"
            } else {
                secHeader = "Driving a vehicle at less than prescribed age"
            }
        } else if bannerTitle! == "Driving Related" {
            if section == 0 {
                secHeader = "Violation of No Entry"
            } else if section == 1 {
                secHeader = "Violation of One Way"
            } else if section == 2 {
                secHeader = "Violation of U-Turn"
            } else if section == 3 {
                secHeader = "Offences Pertaining to Violation of Prohibited Area"
            } else if section == 4 {
                secHeader = "Violation of Rules Duly Promulgated"
            } else if section == 5 {
                secHeader = "Violation of Prohinited Area"
            } else if section == 6 {
                secHeader = "Violation of Rules Duly Promulgated"
            } else if section == 7 {
                secHeader = "Dangerous, Rash and Negligent Driving"
            } else if section == 8 {
                secHeader = "Driving a vehicle dangerously and Posing\n threat to the lives of other people"
            } else if section == 9 {
                secHeader = "Travelling on Footboard"
            } else if section == 10 {
                secHeader = "Driving and Using unsafe Vehicles"
            } else if section == 11 {
                secHeader = "Posing Hazard to Traffic by Using Dilapidated Vehicles"
            } else if section == 12 {
                secHeader = "Regarding Wearing a Helmet"
            } else if section == 13 {
                secHeader = "To Drive Overweight Vehicle"
            } else if section == 14 {
                secHeader = "Violation of Rules Duly Promulgated"
            } else if section == 15 {
                secHeader = "To Take Away Vehicle without Permission"
            } else if section == 16 {
                secHeader = "Unauthorized Interference regardign Motor Vehicle"
            } else {
                secHeader = "To Allow/Permit Unauthorized Person to Drive a Vehicle"
            }
        } else if bannerTitle! == "Road Marking Related" {
            if section == 0 {
                secHeader = "Violation of Stop Line"
            } else if section == 1 {
                secHeader = "Violation of Lane"
            }
            
        } else if bannerTitle! == "Number Plate Related" {
            secHeader = "Irregular Number Plate"
        } else if bannerTitle! == "Traffic Police Related" {
            secHeader = "Disobeying Traffic Police Officer in Uniform"
        } else if bannerTitle! == "Traffic Signal Related" {
            if section == 0 {
                secHeader = "Violation of Signal Jumping"
            } else if section == 1 {
                secHeader = "General Provision for Punishment of Offences"
            } else {
                secHeader = "Violation of Stop Signal"
            }
        } else if bannerTitle! == "Speed and Overtake Related" {
            if section == 0 {
                secHeader = "Using Mobile While Driving"
            } else if section == 1 {
                secHeader = "Driving Vehicle After Cosuming Intoxicants/Substances"
            } else if section == 2 {
                secHeader = "Committing Offence Pertaining to Licenses"
            } else {
                secHeader = "Commiting Offence Related to Accident"
            }
        } else if bannerTitle! == "Towing Related" {
            if section == 0 {
                secHeader = "Two Wheeler"
            } else if section == 1 {
                secHeader = "Car, Jeep, Taxi, Auto, Rickshaw"
            } else if section == 2 {
                secHeader = "Light Motor Vehicle"
            } else {
                secHeader = "Heavy Motor Vehicles"
            }
        } else if bannerTitle! == "Pollution Related" {
            secHeader = "Without PUC Certificate"
        } else if bannerTitle! == "Motor Vehicle Related" {
            if section == 0 {
                secHeader = "Overloading of Goods Vehicles"
            } else {
                secHeader = "Carrying Goods in Dangerous and Hazardous Manner"
            }
        } else if bannerTitle! == "Commercial Vehicle Related" {
            if section == 0 {
                secHeader = "Playing in No Entry Time"
            } else if section == 1 {
                secHeader = "Carrying Persons Dangerously or Carrying Persons in Goods Vehicles"
            } else {
                secHeader = "Overloading of Autos"
            }
        } else {
            if section == 0 {
                secHeader = "Parking of vehicles in such a manner which may pose a risk to other vehicles"
            } else {
                secHeader = "Illegal parking on public road at No Parking Boards"
            }
        }
        self.tableView.sectionFooterHeight = UITableViewAutomaticDimension
        
        return secHeader
        
    }*/
    
    
}
