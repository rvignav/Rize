//
//  SecondViewController.swift
//  CACApp
//
//  Created by Ayaan Haque on 6/17/20.
//  Copyright © 2020 Ayaan Haque. All rights reserved.
//

import UIKit
import "Lmi/Vidyoclient/VideoConnector_Objc.h"

@Interface SecondViewController : UIViewController <IConnect>

class SecondViewController: UIViewController {
    @IBOutlet weak var VideoView: UIView!
    
    @IBOutlet weak var ConnectButton: UIButton!
    
    @IBOutlet weak var DisconnectButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        ConnectButton.backgroundColor = UIColor.init(red: 48/255, green: 177/255, blue: 99/255, alpha: 1)
        ConnectButton.layer.cornerRadius = 25.0;
        ConnectButton.tintColor = UIColor.white;
    }


}

