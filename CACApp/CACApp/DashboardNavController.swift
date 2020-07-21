//
//  DashboardNavController.swift
//  CACApp
//
//  Copyright © 2020 Rize. All rights reserved.
//

import UIKit
import FirebaseAuth

class DashboardNavController: UINavigationController {

    override func viewDidLoad() {
        
        
        if Auth.auth().currentUser == nil {
           let vc = storyboard?.instantiateViewController(identifier: "start" ) as! StartViewController
           vc.modalPresentationStyle = .fullScreen
           present(vc, animated: false)
        }

        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
