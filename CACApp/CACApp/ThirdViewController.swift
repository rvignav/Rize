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
        joinChannel()
    }
    
    func initialize AgoraEngine(){
        agoraKit = AgoraRtcEngineKit.sharedEngine(withAppId: "d84a5ace7a174145887a9878067c2e7f", delegate: self)
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
        
    func leaveChannel(){
        agoraKit?.leaveChannel(nil)
        localView.isHidden = true
        remoteView.isHidden = true
        
    }
        
    @IBAction func didTapHangUp(_ sender: UIButton){
        leaveChannel()
    }
}

extension ViewController: AgoraRtcEngineDelegate {
    func rtcEngine(_ engine: AgoraRtcEngineKit, firstRemoteVideoDecodedOfUid uid: UInt, size: COSize, elapsed: Int){
        let videoCanvas = AgoraRtcVideoCanvas()
        videoCanvas.uid = uid
        videoCanvas.view = remoteView
        videoCanvas.renderMode = .hidden
        
        agoraKit?.setupRemoteVideo(videoCanvas)
    }
}
