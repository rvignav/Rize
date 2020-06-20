//
//  ThirdViewController.swift
//  CACApp
//
//  Created by Howard Huang on 6/19/20.
//  Copyright © 2020 Ayaan Haque. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var remoteView: UIView!
    @IBOutlet weak var localView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        ConnectButton.backgroundColor = UIColor.init(red: 48/255, green: 177/255, blue: 99/255, alpha: 1)
        ConnectButton.layer.cornerRadius = 25.0;
        ConnectButton.tintColor = UIColor.white;
    }
}
