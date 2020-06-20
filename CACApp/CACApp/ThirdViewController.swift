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
        setupLocalVideo()
    }
    
    func initialize AgoraEngine(){
        agoraKit = AgoraRtcEngineKit.sharedEngine(withAppId: "YOUR_APP_ID_HERE", delegate: self)
    {
        
    func setupLocalVideo(){
        agoraKit?.enableVideo()
        
        let VideoCanvas = AgoraVideoCanvas()
        videoCanvas.uid = 0
        videoCanvas.view = localView
        videoCanvas.renderMode = .hidden
        
        agoraKit?.setupLocalVideo(videoCanvas)
    }
        
        
    func joinChannel(){
        agoraKit?.joinChannel(byToken: nil, channelId: "default", info: nil, uid: 0, joinSucess: { (channel, uid, elapsed) in print("Successfully joined channel \(channel)")
        })
            
    }
        
    @IBAction func didTapHangUp(_ sender: UIButton){
        
    }
}

extension ViewController: AgoraRtcEngineDelegate {
    
}
