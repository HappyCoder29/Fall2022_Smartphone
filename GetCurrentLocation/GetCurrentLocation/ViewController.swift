//
//  ViewController.swift
//  GetCurrentLocation
//
//  Created by Drillmaps on 24/09/22.
//



// 1. Add the Privacy strings to info.plist
// 2. Set location to whereever you want on the simulator
// 3. import CoreLocation
// 4. Conform to CLLocationManagerDelegate
// 5. Add a LocationManager to the code let locationManager = CLLocationManager()
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    let locationManager = CLLocationManager()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters
        
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else { return }
        
        let lat = location.coordinate.latitude
        let lng = location.coordinate.longitude
        
        print(lat)
        print(lng)
        
    }

    @IBAction func getLocation(_ sender: Any) {
        locationManager.requestLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
    }
    
}

