//
//  HostViewController.swift
//  CACApp
//
//  Created by Howard Huang on 7/8/20.
//  Copyright © 2020 Ayaan Haque. All rights reserved.
//

import UIKit
import SparkSDK

class HostViewController: UIViewController, SparkMediaViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func startCall() {
        // Who are you?
        let sparkMedia = SparkMediaView(authType: .sparkId ,apiKey: "API_KEY", delegate: self)
        // Who do you want to call? Is it Voice or Video?
        sparkMedia.videoCall(recipient: "RECIPIENT_ADDRESS")
        // Where should I display the call view?
        self.present(sparkMedia, animated: true, completion: nil)
    }
    
    func callDidComplete() {
        // Add your handling logic here
        print("Call Successful")
    }
    
    func callFailed(withError: String) {
        // Add your handling logic here
        print("Call Failed")
    }
}
