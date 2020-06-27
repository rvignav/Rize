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
        title = "Profile"
        
        self.profile.layer.cornerRadius = 25
        
        setupMenuBar()

    }
    
    let menuBar: MenuBar = {
        let mb = MenuBar()
        return mb
    }()
    private func setupMenuBar(){
        view.addSubview(menubar)
        view.addConstraintsWithFormat("H:|[v0]|", views: MenuBar)
        view.addConstraintsWithFormat("V:|[v0(50)]", views: MenuBar)
    }
    
    @IBAction func editProfile(_ sender: Any) {
        
    }
    
    
}
