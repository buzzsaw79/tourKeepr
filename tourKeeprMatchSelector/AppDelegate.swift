//
//  AppDelegate.swift
//  tourKeeprMatchSelector
//
//  Created by Keith Bamford on 18/01/2016.
//  Copyright © 2016 AKA Consultants. All rights reserved.
//

import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, UISplitViewControllerDelegate {

    var window: UIWindow?
    
    let CDS = CoreDataStack()
    
    struct globalColours {

        let greenColour = UIColor(red: 0.4, green: 0.54, blue: 0.19, alpha: 1.0) // Another Green
        let evenCellColour = UIColor(red: 0.918, green: 0.902, blue: 0.792, alpha: 1) // Oyster White
        let oddCellColour = UIColor(red: 0.537, green: 0.675, blue: 0.463, alpha: 1.0) // Pale Green
        let footerColour = UIColor(red: 0.424, green: 0.443, blue: 0.337, alpha: 1.0) // Reed Green
        let nameLabelTextColour = UIColor(red: 0.8, green: 0.4, blue: 0.4, alpha: 1.0)
        let headerColour = UIColor(red: 0.298, green: 0.569, blue: 0.255, alpha: 1.0)
    }


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        let splitViewController = self.window!.rootViewController as! UISplitViewController
        let navigationController = splitViewController.viewControllers[splitViewController.viewControllers.count-1] as! UINavigationController
        navigationController.topViewController!.navigationItem.leftBarButtonItem = splitViewController.displayModeButtonItem()
        splitViewController.delegate = self

        let masterNavigationController = splitViewController.viewControllers[0] as! UINavigationController
        let controller = masterNavigationController.topViewController as! MasterViewController
        
        // Pass ManagedObjectContext to masterViewController
//        controller.managedObjectContext = CDS.managedObjectContext
        
        
        let detailNavigationController = splitViewController.viewControllers[1] as! UINavigationController
        let detailViewController = detailNavigationController.viewControllers[0] as! DetailViewController
        
        
        
        // Initialise the CoreData Stack and Configure managedObjectContext
        
        
        
        
//        detailViewController.managedObjectContext = CDS.managedObjectContext
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
        // Saves changes in the application's managed object context before the application terminates.
        CDS.saveContext()
    }

    // MARK: - Split view

    func splitViewController(splitViewController: UISplitViewController, collapseSecondaryViewController secondaryViewController:UIViewController, ontoPrimaryViewController primaryViewController:UIViewController) -> Bool {
        guard let secondaryAsNavController = secondaryViewController as? UINavigationController else { return false }
        guard let topAsDetailController = secondaryAsNavController.topViewController as? DetailViewController else { return false }
        if topAsDetailController.detailItem == nil {
            // Return true to indicate that we have handled the collapse by doing nothing; the secondary controller will be discarded.
            return true
        }
        return false
    }
   
}

