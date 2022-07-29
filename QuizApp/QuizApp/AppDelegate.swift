//
//  AppDelegate.swift
//  QuizApp
//
//  Created by MAC on 7/21/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = UINavigationController(rootViewController: HomveViewController())
        window?.makeKeyAndVisible()
        return true
    }



}
