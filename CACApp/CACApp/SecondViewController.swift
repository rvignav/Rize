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
    }


}

