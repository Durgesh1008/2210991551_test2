//
//  DataInputTableViewController.swift
//  2210991551_test2
//
//  Created by student-2 on 23/11/24.
//

import UIKit

class DataInputTableViewController: UITableViewController ,UIImagePickerControllerDelegate,UINavigationControllerDelegate{

    @IBOutlet weak var iamgePicker: UIImageView!
    @IBOutlet weak var recipieName: UITextField!
    @IBOutlet weak var ingr: UITextField!
    @IBOutlet weak var prepra: UITextField!
    @IBOutlet weak var categroies: UITextField!
    @IBOutlet weak var nutration: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
    }


    
    @IBAction func ButtonTappedImagePiker(_ sender: UIButton) {
        let imgPicker = UIImagePickerController()
        imgPicker.delegate = self
        let alertController = UIAlertController(title: "Choose Image Source", message: nil, preferredStyle: .actionSheet)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        
        if UIImagePickerController.isSourceTypeAvailable(.camera){
            let cameraAction = UIAlertAction(title: "Camera", style: .default) { (action) in
                print("Camera Tapped")
                imgPicker.sourceType = .camera
                self.present(imgPicker, animated: true, completion: nil)
            }
            alertController.addAction(cameraAction)
        }
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
            let photoLibAction = UIAlertAction(title: "Photo Library", style: .default) { (action) in
               print("Photo library Tapped")
                imgPicker.sourceType = .photoLibrary
                self.present(imgPicker, animated: true, completion: nil)
                
            }
            alertController.addAction(photoLibAction)
        }
        
        
        
        
        present(alertController, animated: true, completion: nil)
    }
    func imagePickerControllerimagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let image = info[.originalImage] as? UIImage else { return }
        iamgePicker.image = image
        dismiss(animated: true, completion: nil)
    }

    
    @IBAction func doneButtonTapped(_ sender: UIBarButtonItem) {
        let name = recipieName.text
        let ingr = ingr.text
        let prepra = prepra.text
//        let categroies = categroies.text
//        let nutration = nutration.text
        print("image \(String(describing: iamgePicker.image))")
       print("name \(String(describing: name))")
        print("ingr \(String(describing: ingr))")
        print("preprd \(String(describing: prepra))")
    }
    
   
   
}
