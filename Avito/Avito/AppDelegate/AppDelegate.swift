//
//  AppDelegate.swift
//  Avito
//
//  Created by Kalandarov Vakil on 22.05.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let tableViewController = ListOfEmployeesViewController()
        let navigationViewController = UINavigationController(rootViewController: tableViewController)
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navigationViewController
        window?.backgroundColor = .white
        window?.makeKeyAndVisible()
        return true
    }


}

