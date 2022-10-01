//
//  ViewController.swift
//  TakeAPicture
//
//  Created by Drillmaps on 01/10/22.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imgView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func takeAPic(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Take a Picture", message: "Awesome Picture", preferredStyle: .alert)
        
        let cameraAction = UIAlertAction(title: "Camera", style: .default){ action in
            
            if UIImagePickerController.isSourceTypeAvailable(.camera){
                let imagePicker = UIImagePickerController()
                imagePicker.delegate = self
                imagePicker.sourceType = .camera
                imagePicker.allowsEditing = false
                self.present(imagePicker, animated: true)
            }
            
        }
        
        let photoLibraryAction = UIAlertAction(title: "Photo Library", style: .default){ action in
            
            if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
                let imagePicker = UIImagePickerController()
                imagePicker.delegate = self
                imagePicker.sourceType = .photoLibrary
                imagePicker.allowsEditing = false
                self.present(imagePicker, animated: true)
            }
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel){ action in
            print("cancel Pressed")
        }
        
        alertController.addAction(cameraAction)
        alertController.addAction(photoLibraryAction)
        alertController.addAction(cancelAction)
        
        self.present(alertController, animated: true)

        
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            imgView.image = image
            
        }
        
        picker.dismiss(animated: true)
        
    }
}

