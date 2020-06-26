//
//  DashboardViewController.swift
//  CACApp
//
//  Created by Ayaan Haque on 6/18/20.
//  Copyright © 2020 Ayaan Haque. All rights reserved.
//

import UIKit

class DashboardViewController: UIViewController {
    
    enum CardState {
        case expanded
        case collapsed
    }
    
    @IBOutlet weak var host: UIButton!
    
    var cardViewController:CardViewController!
    var visualEffectView:UIVisualEffectView!
    
    let cardHeight:CGFloat = 600
    let cardHandleAreaHeight:CGFloat = 65
    
    var cardVisible = false
    var nextState:CardState {
        return cardVisible ? .collapsed: .expanded
    }
    
    var runningAnimations = [UIViewPropertyAnimator]()
    var animationProgressWhenInterrupted:CGFloat = 0
    
    @IBOutlet weak var schedule: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Home"
        self.host.layer.cornerRadius = 25
        self.schedule.layer.cornerRadius = 25
        setupCard()

        // Do any additional setup after loading the view.
    }
    
    func setupCard(){
        visualEffectView = UIVisualEffectView()
        visualEffectView.frame = self.view.frame
        self.view.addSubview(visualEffectView)
        
        cardViewController = CardViewController(nibName: "CardViewController", bundle: nil)
        self.addChild(cardViewController)
        self.view.addSubview(cardViewController.view)
        
        cardViewController.view.frame = CGRect(x: 0, y: self.view.frame.height - cardHandleAreaHeight, width: self.view.bounds.width, height: cardHeight)
        
        cardViewController.view.clipsToBounds = true
        
        
        
    }
    
    @IBAction func schedule(_ sender: Any) {
    }
    
    @IBAction func new(_ sender: Any) {
        
    }

}
