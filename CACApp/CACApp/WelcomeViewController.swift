//
//  WelcomeViewController.swift
//  CACApp
//
//  Created by Ayaan Haque on 6/22/20.
//  Copyright © 2020 Ayaan Haque. All rights reserved.
//

import UIKit
import UserNotifications

class WelcomeViewController: UIViewController, UIScrollViewDelegate {
//    let scrollView = UIScrollView(frame: CGRect(x:0, y:0, width:320,height: 300))
//    var colors:[UIColor] = [UIColor.red, UIColor.blue, UIColor.green, UIColor.yellow]
//    var frame: CGRect = CGRect(x:0, y:0, width:0, height:0)
//    var pageControl : UIPageControl = UIPageControl(frame: CGRect(x:50,y: 300, width:200, height:50))

    @IBOutlet var holderView: UIView!
    @IBOutlet weak var pageControl: UIPageControl!
    let scrollView = UIScrollView()
    
    let titles  = ["Welcome to", "Help doctors help you.", "Remember the key points from every appointment.", "All your video calls will be automatically analyzed.", "Rize would like to send you notifications.", "Rize mantains privacy of patient data and is HIPAA compliant."]
    let imageTitles = ["welcome", "helpdoctors", "keypoints", "headphones", "notif", "hipaa"]


    override func viewDidLoad() {
        super.viewDidLoad()

        configurePageControl()
        configure()

        scrollView.delegate = self
        scrollView.isPagingEnabled = true

        self.view.addSubview(scrollView)

    }
    
    private func configure(){
        scrollView.frame = holderView.bounds
        holderView.addSubview(scrollView)
        pageControl.numberOfPages = titles.count
        pageControl.pageIndicatorTintColor = UIColor(red: 1.00, green: 0.34, blue: 0.33, alpha: 1.00)
        pageControl.currentPageIndicatorTintColor = UIColor(red: 0.38, green: 0.85, blue: 0.99, alpha: 1.00)
        self.pageControl.currentPage = 0
        self.view.addSubview(pageControl)

        scrollView.isPagingEnabled = true
        
        

        for x in 0..<titles.count {
            if x==4 {
                let center = UNUserNotificationCenter.current()
                center.requestAuthorization(options: [.alert, .sound]) { (granted, error) in }
            }
            
            let pageView = UIView(frame: CGRect(x: CGFloat(x) * holderView.frame.size.width , y: 0, width: holderView.frame.size.width, height: holderView.frame.size.height))

            scrollView.addSubview(pageView)

            let label = UILabel(frame: CGRect(x: 10, y: 10, width: pageView.frame.size.width-20, height: 400))
            let imageView = UIImageView(frame: CGRect(x: 25, y: 10+120+10, width: pageView.frame.size.width-60, height: pageView.frame.size.height - 60 - 130 - 15 - 40))
            let button = UIButton(frame: CGRect(x: 10, y: pageView.frame.size.height-150, width: pageView.frame.size.width-20, height: 50))

            label.textAlignment = .center
            label.font = UIFont(name: "Helvetica-Bold", size: 25)
            pageView.addSubview(label)
            label.text = titles[x]
            label.textColor = UIColor.black
            label.lineBreakMode = NSLineBreakMode.byWordWrapping
            label.numberOfLines = 0

            imageView.contentMode = .scaleAspectFit
            imageView.image = UIImage(named: imageTitles[x])
            pageView.addSubview(imageView)

            button.setTitleColor(.white, for: .normal)
            button.backgroundColor = .black
            button.setTitle("Continue", for: .normal)
            if x == 5{
                button.setTitle("Get Started", for: .normal)
            }
            button.addTarget(self, action: #selector(didTapbutton(_:)), for: .touchUpInside)
            button.tag = x+1
            pageView.addSubview(button)
        }

       scrollView.contentSize = CGSize(width: holderView.frame.size.width * 6, height: 0)
        pageControl.addTarget(self, action: #selector(self.changePage(sender:)), for: UIControl.Event.valueChanged)

    }

    func configurePageControl() {
        // The total number of pages that are available is based on how many available colors we have.
        self.pageControl.numberOfPages = 6
        self.pageControl.currentPage = 0
//        self.pageControl.tintColor = UIColor.red
       
        self.pageControl.pageIndicatorTintColor = UIColor(red: 1.00, green: 0.34, blue: 0.33, alpha: 1.00)
        self.pageControl.currentPageIndicatorTintColor = UIColor(red: 0.38, green: 0.85, blue: 0.99, alpha: 1.00)
        self.view.addSubview(pageControl)

    }

    // MARK : TO CHANGE WHILE CLICKING ON PAGE CONTROL
    @objc func changePage(sender: AnyObject) -> () {
        let x = CGFloat(pageControl.currentPage) * scrollView.frame.size.width
        scrollView.setContentOffset(CGPoint(x:x, y:0), animated: true)
    }
    
    @objc func didTapbutton(_ button: UIButton){
        guard button.tag < 5 else{

            Core.shared.setIsNotNewUser()

            dismiss(animated: true, completion: nil)

            return
        }

        scrollView.setContentOffset(CGPoint(x: holderView.frame.size.width * CGFloat(button.tag), y: 0), animated: true)
        let pageNumber = round(scrollView.contentOffset.x / scrollView.frame.size.width)
        
        var p = Int(pageNumber) + 1
        if p > 5 {
            p = 5
        }
        pageControl.currentPage = Int(p)
    }

    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        
        let pageNumber = round(scrollView.contentOffset.x / scrollView.frame.size.width)
        
        pageControl.currentPage = Int(pageNumber)
    }
    
//    @IBOutlet var holderView: UIView!
//    @IBOutlet weak var pageControl: UIPageControl!
//    let scrollView = UIScrollView()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Do any additional setup after loading the view.
//    }
//
//    override func  viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//        configure()
//    }
//
//    private func configure(){
//        scrollView.frame = holderView.bounds
//        holderView.addSubview(scrollView)
//
//        let titles  = ["Welcome to Rize.", "Help doctors help you.", "Remember the key points from every appointment.", "All your video calls will be recorded and analyzed", "We would like to send you notifications", "mantain privacy of patient data and are HIPAA compliant"]
//
//       pageControl.numberOfPages = titles.count
//        pageControl.currentPageIndicatorTintColor = UIColor.blue
//        pageControl.pageIndicatorTintColor = UIColor.lightGray
//        self.pageControl.currentPage = 0
//        self.view.addSubview(pageControl)
//
//        scrollView.isPagingEnabled = true
//
//        for x in 0..<titles.count {
//            let pageView = UIView(frame: CGRect(x: CGFloat(x) * holderView.frame.size.width , y: 0, width: holderView.frame.size.width, height: holderView.frame.size.height))
//
//            scrollView.addSubview(pageView)
//
//            let label = UILabel(frame: CGRect(x: 10, y: 10, width: pageView.frame.size.width-20, height: 400))
//            let imageView = UIImageView(frame: CGRect(x: 10, y: 10+120+10, width: pageView.frame.size.width-20, height: pageView.frame.size.height - 60 - 130 - 15))
//            let button = UIButton(frame: CGRect(x: 10, y: pageView.frame.size.height-150, width: pageView.frame.size.width-20, height: 50))
//
//            label.textAlignment = .center
//            label.font = UIFont(name: "Helvetica-Bold", size: 25)
//            pageView.addSubview(label)
//            label.text = titles[x]
//
//            imageView.contentMode = .scaleAspectFit
//            imageView.image = UIImage(named: "welcome")
//            pageView.addSubview(imageView)
//
//            button.setTitleColor(.white, for: .normal)
//            button.backgroundColor = .black
//            button.setTitle("Continue", for: .normal)
//            if x == 5{
//                button.setTitle("Get Started", for: .normal)
//            }
//            button.addTarget(self, action: #selector(didTapbutton(_:)), for: .touchUpInside)
//            button.tag = x+1
//            pageView.addSubview(button)
//        }
//
//       scrollView.contentSize = CGSize(width: holderView.frame.size.width * 6, height: 0)
//        pageControl.addTarget(self, action: #selector(self.changePage(sender:)), for: UIControl.Event.valueChanged)
//
//    }
//
//    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
//        let pageNumber = round(scrollView.contentOffset.x / scrollView.frame.size.width)
//        pageControl.currentPage = Int(pageNumber)
//    }
//
//    @objc func changePage(sender: AnyObject) -> () {
//        let x = CGFloat(pageControl.currentPage) * scrollView.frame.size.width
//        scrollView.setContentOffset(CGPoint(x:x, y:0), animated: true)
//    }
//
//    @objc func didTapbutton(_ button: UIButton){
//        guard button.tag < 5 else{
//
//            Core.shared.setIsNotNewUser()
//
//            dismiss(animated: true, completion: nil)
//
//            return
//        }
//
//        scrollView.setContentOffset(CGPoint(x: holderView.frame.size.width * CGFloat(button.tag), y: 0), animated: true)
//    }
//
//    func scrollViewDidScroll(_ scrollView: UIScrollView){
//        let page = scrollView.contentOffset.x / scrollView.frame.size.width;
//
//        pageControl.currentPage = Int(page)
//    }
//
//
}
