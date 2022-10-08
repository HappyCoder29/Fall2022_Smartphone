//
//  ViewController.swift
//  ProtocolAndDelegates
//
//  Created by Drillmaps on 08/10/22.
//

import UIKit

class ViewController: UIViewController, SendNameDelegate {
   
    @IBOutlet weak var lblWelcome: UILabel!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goToSecindVC(_ sender: Any) {
        performSegue(withIdentifier: "segueSecondVC", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueSecondVC" {
            let secondVC = segue.destination as! SecondViewController
            secondVC.sendNameDelegate = self
        }
    }
 
    
    func sendName(name: String) {
        lblWelcome.text = "Welcome \(name) !!!"
    }
    
   
}

