 //
//  NotificationViewController.swift
//  CACApp
//
//  Created by Ayaan Haque on 6/19/20.
//  Copyright © 2020 Ayaan Haque. All rights reserved.
//

import UIKit

class NotificationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func continueButton(_ sender: Any) {
        self.performSegue(withIdentifier: "notiToLocation", sender: self)
    }
     
    
}
