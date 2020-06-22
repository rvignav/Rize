//
//  DashboardViewController.swift
//  CACApp
//
//  Created by Ayaan Haque on 6/18/20.
//  Copyright © 2020 Ayaan Haque. All rights reserved.
//

import UIKit

class DashboardViewController: UIViewController {
    
    @IBOutlet weak var host: UIButton!
    
    @IBOutlet weak var schedule: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.host.layer.cornerRadius = 25
        self.schedule.layer.cornerRadius = 25

        
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        if Core.shared.isNewUser() {
            // show onboarding
            let vc = storyboard?.instantiateViewController(identifier: "welcome") as! WelcomeViewController
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: true)
            
        }
    }
    
    @IBAction func schedule(_ sender: Any) {
    }
    
    @IBAction func new(_ sender: Any) {
        
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
