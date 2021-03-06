//
//  ProfileViewController.swift
//  CACApp
//
//  Copyright © 2020 Rize. All rights reserved.
//

import UIKit
import FirebaseAuth

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var profileSahilRoy: UIImageView!
    
    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var profileView: UIView!
    @IBOutlet weak var transcriptView: UIView!
    @IBAction func segmentedControl(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            profileView.isHidden = false
            transcriptView.isHidden = true
        default:
            profileView.isHidden = true
            transcriptView.isHidden = false
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Profile"
        
//        self.profile.layer.cornerRadius = 25
        
        profileView.isHidden = false
        transcriptView.isHidden = true
        
        self.profileImage.layer.cornerRadius = self.profileImage.frame.size.width / 2;
        self.profileImage.clipsToBounds = true;
        
        // make this pfp the same as the one that was chosen in the edit page
        
        profileSahilRoy.layer.cornerRadius = 20;
        profileSahilRoy.clipsToBounds = true;
        
        

    }

    
    @IBAction func editProfile(_ sender: Any) {
        
//        let vc = storyboard?.instantiateViewController(identifier: "editProfile" ) as! EditProfileViewController
//        vc.modalPresentationStyle = .fullScreen
//        present(vc, animated: true)
        
    }
    
    
//    @IBAction func logOutPressed(_ sender: Any) {
//        do {
//               try Auth.auth().signOut()
//           }
//        catch let signOutError as NSError {
//               print ("Error signing out: %@", signOutError)
//           }
//
//           let storyboard = UIStoryboard(name: "Main", bundle: nil)
//           let initial = storyboard.instantiateInitialViewController()
//           UIApplication.shared.keyWindow?.rootViewController = initial
//    }
    
    
    
}
