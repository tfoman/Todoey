//
//  AppDelegate.swift
//  Todoey
//
//  Created by Tommy Öman on 2018-03-07.
//  Copyright © 2018 Tommy Öman. All rights reserved.
//  Xxx

import UIKit
import RealmSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.

        //print(Realm.Configuration.defaultConfiguration.fileURL)
        
        do {
            _ = try Realm()

        } catch {
            print("Error initializing new realm, \(error)")
        }
        
        
        
        return true
    }

}

