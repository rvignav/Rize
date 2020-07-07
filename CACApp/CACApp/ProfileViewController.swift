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
    
    @IBOutlet weak var profileView: UIView!
    @IBOutlet weak var transcriptView: UIView!
    
    @IBAction func segmentedControl(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            profileView.isHidden = false
            transcriptView.isHidden = true
        default:
            profileView.isHidden = true
            transcriptView.isHidden = false
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Profile"
        
        self.profile.layer.cornerRadius = 25
        
        profileView.isHidden = false
        transcriptView.isHidden = true

    }

    
    @IBAction func editProfile(_ sender: Any) {
        
    }
    
    
}
