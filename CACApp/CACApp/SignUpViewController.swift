//
//  SignUpViewController.swift
//  CACApp
//
//  Created by Ayaan Haque on 6/29/20.
//  Copyright © 2020 Ayaan Haque. All rights reserved.
//

import UIKit
import FirebaseAuth

class SignUpViewController: UIViewController {

    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var passwordConfirm: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        let doneButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.done, target: self, action: #selector(self.doneClicked))
        toolbar.setItems([doneButton], animated: false)
        
        email.inputAccessoryView = toolbar
        password.inputAccessoryView = toolbar
        passwordConfirm.inputAccessoryView = toolbar

        // Do any additional setup after loading the view.
    }
    
    @objc func doneClicked() {
        view.endEditing(true)
    }
    
    @IBAction func signUpAction(_ sender: Any) {
        if password.text != passwordConfirm.text {
        let alertController = UIAlertController(title: "Password Incorrect", message: "Please re-type password", preferredStyle: .alert)
        let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                    
        alertController.addAction(defaultAction)
        self.present(alertController, animated: true, completion: nil)
                }
        else{
        Auth.auth().createUser(withEmail: email.text!, password: password.text!){ (user, error) in
         if error == nil {
            let vc = self.storyboard?.instantiateViewController(identifier: "dashboard" ) as! DashboardViewController
           vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: true)
                        } 
         else{
           let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
           let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                            
            alertController.addAction(defaultAction)
            self.present(alertController, animated: true, completion: nil)
               }
                    }
              }
    }
    
    
    @IBAction func back(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(identifier: "start" ) as! StartViewController
        vc.modalPresentationStyle = .fullScreen
         self.present(vc, animated: true)
    }
    
}
