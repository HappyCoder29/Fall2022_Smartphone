//
//  CameraAccessDeniedViewController.swift
//
//  Created by Jakub Dolejs on 28/03/2018.
//  Copyright © 2018 Applied Recognition Inc. All rights reserved.
//

import UIKit

class CameraAccessDeniedViewController: UIViewController {

    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let appName = Bundle.main.infoDictionary?[kCFBundleNameKey as String] as? String {
            label.text = String(format: "Camera access denied. Please go to settings and enable camera for %@.", appName)
        }
    }
    
    @IBAction func openSettings() {
        if let settingsURL = URL(string: UIApplication.openSettingsURLString) {
            UIApplication.shared.open(settingsURL, options: [:], completionHandler: nil)
        }
    }

}
