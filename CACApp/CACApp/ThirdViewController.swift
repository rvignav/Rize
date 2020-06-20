//
//  ThirdViewController.swift
//  CACApp
//
//  Created by Howard Huang on 6/19/20.
//  Copyright © 2020 Ayaan Haque. All rights reserved.
//

import UIKit
import AgoraRtcEngineKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var remoteView: UIView!
    @IBOutlet weak var localView: UIView!
    
    var agoraKit: AgoraRtcEngineKit?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        initializeAgoraEngine()
    }
    
    func initialize AgoraEngine(){
        agoraKit = AgoraRtcEngineKit.sharedEngine(withAppId: "YOUR_APP_ID_HERE", delegate: self)
    {
        
    @IBAction func didTapHangUp(_ sender: UIButton){
        
    }
}

extension ViewController: AgoraRtcEngineDelegate {
    
}
