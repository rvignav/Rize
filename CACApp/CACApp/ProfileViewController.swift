//
//  ProfileViewController.swift
//  CACApp
//
//  Created by Ayaan Haque on 6/18/20.
//  Copyright © 2020 Ayaan Haque. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var profileImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.profileImage.layer.cornerRadius = self.profileImage.frame.size.width / 2;
        self.profileImage.clipsToBounds = true;
        
        self.profileImage.layer.cornerRadius = self.profileImage.frame.size.width / 2;
        self.profileImage.clipsToBounds = true;

    }
    
    @IBAction func editProfile(_ sender: Any) {
        
    }
    
    
}
