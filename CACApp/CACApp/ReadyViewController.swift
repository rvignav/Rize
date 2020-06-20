//
//  ReadyViewController.swift
//  CACApp
//
//  Created by Ayaan Haque on 6/19/20.
//  Copyright © 2020 Ayaan Haque. All rights reserved.
//

import UIKit

class ReadyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func continueButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let mainVC = storyboard.instantiateViewController(identifier: "home") as! UIViewController
        self.present(mainVC, animated: true, completion: nil)
    }
    

}
