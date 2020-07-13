//
//  SignUp2ViewController.swift
//  CACApp
//
//  Copyright © 2020 Rize. All rights reserved.
//

import UIKit

class SignUp2ViewController: UIViewController {

    @IBOutlet weak var ageField: UITextField!
    @IBOutlet weak var doctorName: UITextField!
    @IBOutlet weak var symptomsField: UITextField!
    @IBOutlet weak var conditionsField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signUpPressed(_ sender: Any) {
        
        let vc = storyboard?.instantiateViewController(identifier: "dashboard" ) as! DashboardViewController
         vc.modalPresentationStyle = .fullScreen
         present(vc, animated: true)
        
    }
    
}
