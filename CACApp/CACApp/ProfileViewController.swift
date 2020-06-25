//
//  ProfileViewController.swift
//  CACApp
//
//  Created by Ayaan Haque on 6/18/20.
//  Copyright © 2020 Ayaan Haque. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet weak var profile: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.profile.layer.cornerRadius = 25

    }
    
    @IBAction func editProfile(_ sender: Any) {
        
    }
    
    
}
