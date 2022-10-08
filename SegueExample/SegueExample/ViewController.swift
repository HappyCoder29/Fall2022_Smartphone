//
//  ViewController.swift
//  SegueExample
//
//  Created by Drillmaps on 08/10/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sendName(_ sender: Any) {
        performSegue(withIdentifier: "segueSecondVC", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueSecondVC" {
            
            let secondVC = segue.destination as! SecondViewController
            
            guard let name = txtName.text else {return}
            
            secondVC.welcomeStr = "Welcome \(name)!!!"
        }
    }
    
}

