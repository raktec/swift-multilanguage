//
//  AppDelegate.swift
//  MultiLang
//
//  Created by Rakesh Kumar Sharma on 28/12/17.
//  Copyright © 2017 Rakesh Kumar Sharma. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    static let delegate = UIApplication.shared.delegate as? AppDelegate
    
    var applicationLanguage : String!


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
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
    
   
    static func appDelegateObject() -> AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate
    }
    
    func localLanguage(key:String, comment:String) -> String {
        return NSLocalizedString(key, tableName: nil, bundle: getpath(), value: "" , comment: comment)
    }
    
    func getpath() -> Bundle {
        if applicationLanguage == "pt-PT" {
            applicationLanguage = "pt-PT"
            return Bundle.init(path: Bundle.main.path(forResource: "pt-PT", ofType: "lproj")!)!
            
        }
        else if applicationLanguage == "fr-PT" {
            applicationLanguage = "fr-PT"
            return Bundle.init(path: Bundle.main.path(forResource: "fr", ofType: "lproj")!)!
            
            
        }
        else {
            applicationLanguage = "en"
            return Bundle.init(path: Bundle.main.path(forResource: "en", ofType: "lproj")!)!
            
        }
        
        
    }
    
    func languageToSend()-> String {
        
        let lang = AppDelegate.appDelegateObject().applicationLanguage
        if lang == "pt-PT" {
            return "pt"
        }else if lang == "fr-PT" {
            return "fr"
        }
        return "en"
    }
}




