//
//  ViewHistoryTableViewController.swift
//  EquipmentManagement
//
//  Created by Drillmaps on 30/10/22.
//

import UIKit
import FirebaseDatabase

class ViewHistoryTableViewController: UITableViewController {
    
    @IBOutlet var tblView: UITableView!
    
    var serialNumber = ""
    
    var historyArray: [History] = [History]()
    
    var ref: DatabaseReference!

   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()
        observeValues()
    }
    
    func observeValues(){

        // Listen for new comments in the Firebase database
        ref.child("/Equipment/\(serialNumber)").observe(.childAdded, with: { (snapshot) -> Void in
            print(snapshot)
            guard let snap = snapshot.value as? [String:AnyObject] else {return}
            self.historyArray.removeAll()
            
            for kvPair in snap {
                let history = History()
                let value: NSDictionary = kvPair.value as! NSDictionary
                history.dateRepair = "Oct 29, 2022" //value.value(forKey: "date") as! String
                history.activity = value.value(forKey: "Activity") as! String
                history.natureOfProblem = value.value(forKey: "NatureOfProblem") as! String
                history.rectificationWork = value.value(forKey: "RectificationWork") as! String
                history.remarks = value.value(forKey: "Remarks") as! String
                
                self.historyArray.append(history)
                
            }
            
            
            self.tblView.reloadData()
            
        })
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return historyArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ViewHistoryTableViewCell

        cell.lblDate.text = historyArray[indexPath.row].dateRepair
        cell.lblActivity.text = historyArray[indexPath.row].activity
        cell.lblNatureOfProblem.text = historyArray[indexPath.row].natureOfProblem
        cell.lblRectificationWork.text = historyArray[indexPath.row].rectificationWork
        cell.lblRemarks.text = historyArray[indexPath.row].remarks

        
        return cell
    }
    

}
