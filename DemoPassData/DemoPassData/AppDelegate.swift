//
//  AppDelegate.swift
//  DemoPassData
//
//  Created by MAC on 6/21/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = FirstViewController()
        window?.makeKeyAndVisible()
        return true
    }

 

}

