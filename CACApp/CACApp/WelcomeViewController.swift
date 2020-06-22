//
//  WelcomeViewController.swift
//  CACApp
//
//  Created by Ayaan Haque on 6/22/20.
//  Copyright © 2020 Ayaan Haque. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var holderView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func  viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    
    private func configure(){
        let scrollView = UIScrollView(frame: holderView.bounds)
        holderView.addSubview(scrollView)
        
        let titles  = ["Welcome", "Location", "All Set"]
        for x in 0..<3{
            let pageView = UIView(frame: CGRect(x: CGFloat(x) * holderView.frame.size.width , y: 0, width: holderView.frame.size.width, height: holderView.frame.size.height))
            
            scrollView.addSubview(pageView)
            
            let label = UILabel(frame: CGRect(x: 10, y: 10, width: pageView.frame.size.width-20, height: 120))
            let imageView = UIImageView(frame: CGRect(x: 10, y: 10+120+10, width: pageView.frame.size.width-20, height: pageView.frame.size.height - 60 - 130 - 15))
            let button = UIButton(frame: CGRect(x: 10, y: pageView.frame.size.height-60, width: pageView.frame.size.width-20, height: 50))

            label.textAlignment = .center
            label.font = UIFont(name: "Helvetica-Bold", size: 32)
            pageView.addSubview(label)
            label.text = titles[x]
            
            imageView.contentMode = .scaleAspectFit
            
        }
        
    }
    
    
    
}
