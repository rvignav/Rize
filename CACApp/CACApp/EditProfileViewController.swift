//
//  EditProfileViewController.swift
//  CACApp
//
//  Created by Ayaan Haque on 7/9/20.
//  Copyright © 2020 Ayaan Haque. All rights reserved.
//

import UIKit

class EditProfileViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var ageField: UITextField!
    @IBOutlet weak var doctorField: UITextField!
    @IBOutlet weak var symptomsField: UITextField!
    @IBOutlet weak var conditionsField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTapGesture()
        
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        let doneButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.done, target: self, action: #selector(self.doneClicked))
        toolbar.setItems([doneButton], animated: false)

        nameField.inputAccessoryView = toolbar
        ageField.inputAccessoryView = toolbar
        doctorField.inputAccessoryView = toolbar
        symptomsField.inputAccessoryView = toolbar
        conditionsField.inputAccessoryView = toolbar
        
        self.profileImage.layer.cornerRadius = self.profileImage.frame.size.width / 2;
        self.profileImage.clipsToBounds = true;


    }
    
    @IBAction func back(_ sender: Any) {
        
        let vc = self.storyboard?.instantiateViewController(identifier: "profile" ) as! ProfileViewController
        vc.modalPresentationStyle = .fullScreen
         self.present(vc, animated: true)
        
    }
    
    
    
    @IBAction func uploadPicture(_ sender: Any) {
        
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            var imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = .photoLibrary;
            imagePicker.allowsEditing = true
            self.present(imagePicker, animated: true, completion: nil)
        }
        
    }
    
    @objc func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {

        var selectedImageFromPicker: UIImage?
        if let editedImage = info[UIImagePickerController.InfoKey.editedImage.rawValue] as? UIImage {
            selectedImageFromPicker = editedImage
        } else if let originalImage = info[UIImagePickerController.InfoKey.originalImage.rawValue] as? UIImage {
            selectedImageFromPicker = originalImage
        }
        
        dismiss(animated: true, completion: nil)
        
        if let selectedImage = selectedImageFromPicker {
            profileImage.image = selectedImage

        }
        
    }
    
    @objc func doneClicked() {
        view.endEditing(true)
    }
    private func configureTapGesture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func handleTap() {
        view.endEditing(true)
    }
    
}
