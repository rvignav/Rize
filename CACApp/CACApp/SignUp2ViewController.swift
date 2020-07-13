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
        
        navigateToMainInterface()
        
    }
    
    private func navigateToMainInterface(){
        
        let vc = self.storyboard?.instantiateViewController(identifier: "dashboardNav" ) as! DashboardNavController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
        
    }
    
}
