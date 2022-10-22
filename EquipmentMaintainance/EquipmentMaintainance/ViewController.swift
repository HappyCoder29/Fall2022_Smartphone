//
//  ViewController.swift
//  EquipmentMaintainance
//
//  Created by Drillmaps on 22/10/22.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {

    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var lblStatus: UILabel!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblStatus.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func loginAction(_ sender: Any) {
        guard let email = txtEmail.text else {return}
        guard let password = txtPassword.text else {return}
        
        
        if email.isValidEmail(email: email) == false {
            lblStatus.text = "Please enter valid email"
            lblStatus.isHidden = false
            return
        }

//        if password.isPasswordStrong == false {
//            lblStatus.text = " Please enter valid password"
//            lblStatus.isHidden = false
//            return
//        }
        
        Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
            guard let strongSelf = self else { return }
            
            if error != nil {
                strongSelf.lblStatus.text = error?.localizedDescription
                strongSelf.lblStatus.isHidden = false
                return
            }
            strongSelf.txtPassword.text = ""
            strongSelf.performSegue(withIdentifier: "segueLogin", sender: self)
            
            
        }
        

        
        
    }
    


}

