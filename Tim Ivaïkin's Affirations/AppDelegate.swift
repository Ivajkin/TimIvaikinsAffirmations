//
//  AppDelegate.swift
//  Tim Ivaïkin's Affirations
//
//  Created by Tim Ivaïkin on 9/17/18.
//  Copyright © 2018 Tim Ivaïkin. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let mainViewController = PlayerViewController()
        mainViewController.output = PlayerPresenter(view: mainViewController)
        window?.rootViewController = mainViewController
        window?.makeKeyAndVisible()
        
        return true
    }
}

