//
//  SignUp2ViewController.swift
//  CACApp
//
//  Created by Ayaan Haque on 7/9/20.
//  Copyright © 2020 Ayaan Haque. All rights reserved.
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
