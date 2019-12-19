//
//  AppDelegate.swift
//  xmly-swift
//
//  Created by Mac on 2019/9/27.
//  Copyright © 2019 Mac. All rights reserved.
//

import UIKit
import ESTabBarController_swift
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let tab = self.customIrregularityStyle(delegate: self as? UITabBarControllerDelegate)
        self.window?.rootViewController = tab
        self.window?.makeKeyAndVisible()
        return true
    }

    func customIrregularityStyle(delegate: UITabBarControllerDelegate?) -> ESTabBarController {
        let tabbar:ESTabBarController = ESTabBarController()
        tabbar.delegate = delegate
        tabbar.title = "Irregularity"
        tabbar.tabBar.shadowImage = UIImage.init(named: "transparent")
        tabbar.shouldHijackHandler = {
            tabbarController, viewController, index in
            if index == 2 {
                return true
            }
            return false
        }
        tabbar.didHijackHandler = {
            [weak tabbar] tabbarController, viewController, index in
            DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
                
            })
        }
        
        let v1 = FMHomeController()
        v1.tabBarItem = ESTabBarItem.init(YYIrregularityBasicContentView(), title: "首页", image: UIImage(named: "home"), selectedImage: UIImage(named: "home_1"))
        let n1 = YYNavigationController.init(rootViewController: v1)
        
        let v2 = FMListenController()
        v2.tabBarItem = ESTabBarItem.init(YYIrregularityBasicContentView(), title: "find", image: UIImage(named: "find"), selectedImage: UIImage(named: "find_1"))
        let n2 = YYNavigationController.init(rootViewController: v2)
        tabbar.viewControllers = [n1,n2]
        return tabbar
    }
    
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
 

}
