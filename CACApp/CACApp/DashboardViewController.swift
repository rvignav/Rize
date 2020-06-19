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

        // Do any additional setup after loading the view.
    }
    
    @IBAction func schedule(_ sender: Any) {
    }
    
    @IBAction func new(_ sender: Any) {
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}