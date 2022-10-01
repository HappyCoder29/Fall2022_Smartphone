//
//  ViewController.swift
//  StockTicker
//
//  Created by Drillmaps on 01/10/22.
//

import UIKit
import Alamofire
import SwiftyJSON
import SwiftSpinner

class ViewController: UIViewController {

    @IBOutlet weak var txtStockSymbol: UITextField!
    @IBOutlet weak var lblStock: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func getStockPrice(_ sender: Any) {
        let apiKey = ""

        var url = "https://financialmodelingprep.com/api/v3/quote/"
        url += txtStockSymbol.text!
        url += "?apikey="
        url += apiKey
        
        SwiftSpinner.show("Getting Stock Values")
        
        AF.request(url).responseJSON { responseData in
            print(responseData)
            
            SwiftSpinner.hide()
            
            if responseData.error != nil {
                print(responseData.error!)
                return
            }
            
            guard let stock = JSON(responseData.data!).array?.first else { return }
            
            print(stock["name"].stringValue)
            print(stock["price"].stringValue)

        }
    }
}

