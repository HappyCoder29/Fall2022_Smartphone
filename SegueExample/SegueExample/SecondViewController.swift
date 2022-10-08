//
//  SecondViewController.swift
//  SegueExample
//
//  Created by Drillmaps on 08/10/22.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var lblWelcome: UILabel!
    var welcomeStr = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblWelcome.text = welcomeStr

    }
    
}
