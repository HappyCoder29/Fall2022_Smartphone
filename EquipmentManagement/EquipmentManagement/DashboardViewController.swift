//
//  DashboardViewController.swift
//  EquipmentManagement
//
//  Created by Drillmaps on 28/10/22.
//

import UIKit
import FirebaseAuth

class DashboardViewController: UIViewController {

    
    @IBOutlet weak var txtSerialNumber: UITextField!
    @IBOutlet weak var lblEquipmentName: UILabel!
    @IBOutlet weak var lblMakeName: UILabel!
    @IBOutlet weak var lblModelName: UILabel!
    @IBOutlet weak var lblRatingName: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func scanQRCodeAction(_ sender: Any) {
    }
    
    @IBAction func submitAction(_ sender: Any) {
    }
    
    @IBAction func viewHistoryAction(_ sender: Any) {
    }
    
    
    @IBAction func performMaintainanceAction(_ sender: Any) {
    }
    
    
    @IBAction func logoutAction(_ sender: Any) {
        let keychain = KeyChainService().keyChain
        keychain.clear()

        do {
            try Auth.auth().signOut()
        }
        catch{
            print("Unable to logout")
        }

        self.navigationController?.popViewController(animated: true)
    }
}
