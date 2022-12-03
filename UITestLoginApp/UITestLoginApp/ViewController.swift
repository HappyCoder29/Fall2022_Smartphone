//
//  ViewController.swift
//  UITestLoginApp
//
//  Created by Drillmaps on 03/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtEMail: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBOutlet weak var lblStatus: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblStatus.text = ""
    }

    @IBAction func actionLogin(_ sender: Any) {
        let email = txtEMail.text
        let password = txtPassword.text
        
        if(email == "ashish@test.com" && password == "password"){
            lblStatus.text = ""
            performSegue(withIdentifier: "segueDashboard", sender: self)
        }else{
            lblStatus.text = "Invalid Password"
        }
    }
    
}

