//
//  StartViewController.swift
//  CACApp
//
//  Copyright © 2020 Rize. All rights reserved.
//

import UIKit
import FirebaseAuth

class StartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        if Auth.auth().currentUser != nil {
//          let vc = storyboard?.instantiateViewController(identifier: "dashboard" ) as! DashboardViewController
//           vc.modalPresentationStyle = .fullScreen
//           present(vc, animated: true)
//        }
        // Do any additional setup after loading the view.
    }
    @IBAction func loginPressed(_ sender: Any) {
//        let vc = storyboard?.instantiateViewController(identifier: "login" ) as! LoginViewController
//        vc.modalPresentationStyle = .fullScreen
//        present(vc, animated: true)
    }
    
    @IBAction func signUpPressed(_ sender: Any) {
//        let vc = storyboard?.instantiateViewController(identifier: "signUp" ) as! SignUpViewController
//        vc.modalPresentationStyle = .fullScreen
//        present(vc, animated: true)
    }
    
}

class Core {
    
    static let shared = Core()
    
    func isNewUser() -> Bool {
        
        return !UserDefaults.standard.bool(forKey: "isNewUser")
        
    }
    
    func setIsNotNewUser(){
        
        UserDefaults.standard.set(true, forKey: "isNewUser")
        
    }
    
}
