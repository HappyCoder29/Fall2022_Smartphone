//
//  DashboardViewController.swift
//  EquipmentManagement
//
//  Created by Drillmaps on 28/10/22.
//

import UIKit
import FirebaseAuth

class DashboardViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
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
