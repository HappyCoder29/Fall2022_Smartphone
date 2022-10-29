//
//  PerformMaintainanceViewController.swift
//  EquipmentManagement
//
//  Created by Drillmaps on 29/10/22.
//

import UIKit
import FirebaseDatabase

class PerformMaintainanceViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var txtNatureOfProblem: UITextField!
    
    @IBOutlet weak var txtRectificationWork: UITextField!
    
    @IBOutlet weak var txtRemarks: UITextField!
    
    @IBOutlet weak var txtActivity: UITextField!
    
    var serialNumber: String = ""
    
    var ref: DatabaseReference!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()
    }
    

    @IBAction func submitAction(_ sender: Any) {
        
        let date = transformToJSON(datePicker.date)
        let natureOfProblem = txtNatureOfProblem.text!
        let rectificationWork = txtRectificationWork.text!
        let remarks = txtRemarks.text!
        let activity = txtActivity.text!
        
        
        guard let key = ref.child("Equipment/\(serialNumber)/MaintainanceHistory").childByAutoId().key else { return }
        
        let maintainance = ["date": date,
                            "NatureOfProblem": natureOfProblem,
                            "RectificationWork": rectificationWork,
                            "Remarks": remarks,
                            "Activity": activity] as [String : Any]
        
        
        let childUpdates = ["Equipment/\(serialNumber)/MaintainanceHistory/\(key)": maintainance]
        ref.updateChildValues(childUpdates)
        
        txtNatureOfProblem.text = ""
        txtRectificationWork.text = ""
        txtRemarks.text = ""
        txtActivity.text = ""
        
        self.navigationController?.popViewController(animated: true)
    
    }
    
    
    open func transformToJSON(_ value: Date?) -> Double? {
        if let date = value {
            return Double(date.timeIntervalSince1970) * 1000.0
        }

        return nil
    }

}
