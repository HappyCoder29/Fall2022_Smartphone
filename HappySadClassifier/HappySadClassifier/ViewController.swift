//
//  ViewController.swift
//  HappySadClassifier
//
//  Created by Drillmaps on 03/12/22.
//

import UIKit
import CoreML
import NaturalLanguage

class ViewController: UIViewController {

    @IBOutlet weak var lblClassification: UILabel!
    @IBOutlet weak var txtConversation: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func classifyText(_ sender: Any) {
        let mlModel = try HappySadTextModel().model
        let sentimentPredictor = try! NLModel(mlModel: mlModel)
        let label = sentimentPredictor.predictedLabel(for: txtConversation.text!)
        print(label)
        lblClassification.text = label
        
    }
    
}

