# QR Code Scanner for iOS

Scans QR codes using the device's camera and returns a string value.

## Installation

1. Install [CocoaPods](https://cocoapods.org).
2. Add the following dependency in your **Podspec** file:

    ~~~ruby
    pod 'QR-Code-Scanner-iOS', '~> 1.0'
    ~~~
3. Run `pod install`.

## Usage

~~~swift
import UIKit
import QRCodeScanner

class MyViewController: UIViewController, QRCodeScanViewControllerDelegate {

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
        
            // Show an alert with the scanned value
            let alert = UIAlertController(title: "Scanned value", message: value, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true)
        }
    }
}
~~~