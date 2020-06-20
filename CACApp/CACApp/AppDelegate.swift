//
//  AppDelegate.swift
//  CACApp
//
//  Created by Ayaan Haque on 6/17/20.
//  Copyright © 2020 Ayaan Haque. All rights reserved.
//

import UIKit
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        FirebaseApp.configure()
        
        
        let launchedBefore = UserDefaults.standard.bool(forKey: "hasLaunched")
        self.window = UIWindow(frame: UIScreen.main.bounds)
        let launchStoryboard = UIStoryboard(name: "Onboarding", bundle: nil)
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        var vc: UIViewController
        
        if(launchedBefore){
            vc = mainStoryboard.instantiateViewController(identifier: "home")
        }
        
        else {
            vc = launchStoryboard.instantiateViewController(identifier: "notificationStoryboard")
        }
        
        UserDefaults.standard.set(true, forKey: "hasLaunched")
        
        self.window?.rootViewController = vc
        self.window?.makeKeyAndVisible()
        
        
        
        return true
        
        
        
        
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

