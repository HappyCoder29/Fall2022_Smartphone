//
//  ViewController.swift
//  Scan QR Code
//
//  Created by Drillmaps on 01/10/22.
//

import UIKit
import QRCodeScanner


class ViewController: UIViewController, QRCodeScanViewControllerDelegate {
    
    @IBOutlet weak var lblScannedQRCode: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func scanQRCode(_ sender: Any) {
        scanQRCode()
    }
    
    /// Start the QR code scan
    func scanQRCode() {
        
        // Create an instance of QRCodeScanViewController
        let viewController = QRCodeScanViewController.create()
        
        // Set itself as delegate
        viewController.delegate = self
        
        // Present the view controller
        self.present(viewController, animated: true)
    }
    
    // MARK: QRCodeScanViewControllerDelegate
        
    /// Called when the camera scans a QR code
    /// - Parameters:
    ///   - viewController: View controller that scanned the QR code
    ///   - value: String encoded in the QR code
    func qrCodeScanViewController(_ viewController: QRCodeScanViewController, didScanQRCode value: String) {
        
        // Dismiss the view controller
        viewController.dismiss(animated: true) {
            
            self.lblScannedQRCode.text = value
        }
    }
    


}

