//
//  CoreDataStack.swift
//  tourKeeprMatchSelector
//
//  Created by Keith Bamford on 03/02/2016.
//  Copyright © 2016 AKA Consultants. All rights reserved.
//

import Foundation
import CoreData

class CoreDataStack {
    
    
    //MARK: -
    //MARK: Object Creation
    
    func createDayRounds () -> [DayRound] {
        
        // Configure Tee Times  and Dates as NSDate(s)
        let teeTimeDay1 = dateMaker(2016, month: 05, day: 10, hour: 16, minute: 0)
        let teeTimeDay2 = dateMaker(2016, month: 05, day: 11, hour: 11, minute: 5)
        let teeTimeDay3 = dateMaker(2016, month: 05, day: 12, hour: 8, minute: 42)
        let teeTimeDay4 = dateMaker(2016, month: 05, day: 13, hour: 12, minute: 36)
        let teeTimeDay5 = dateMaker(2016, month: 05, day: 14, hour: 10, minute: 20)
        
        
        // Set Up DayRounds
        let day1 = self.insertNewDayRound(1, course: "Salgados Golf Club", teeTime: teeTimeDay1)
        let day2 = self.insertNewDayRound(2, course: "Ocean Course (Vale Do Lobo)", teeTime: teeTimeDay2)
        let day3 = self.insertNewDayRound(3, course: "Pinhal Golf Course (Oceanico)", teeTime: teeTimeDay3)
        let day4 = self.insertNewDayRound(4, course: "Millennium Golf Course (Oceanico)", teeTime: teeTimeDay4)
        let day5 = self.insertNewDayRound(5, course: "Royal Course (Vale Do Lobo)", teeTime: teeTimeDay5)
        
        return [day1, day2, day3, day4, day5]
        
    }
    
    
    func insertNewDayRound(dayNo: Int, course: String, teeTime: (NSDate?,String?)) -> DayRound {
        
        let newDayRound = NSEntityDescription.insertNewObjectForEntityForName("DayRound", inManagedObjectContext: self.managedObjectContext)
        
        
        // Initialise properties
        newDayRound.setValue(NSNumber(integer: dayNo), forKey: "dayNumberIdentifier")
        newDayRound.setValue(course, forKey: "course")
        newDayRound.setValue(teeTime.0!, forKey: "teeTime")
        newDayRound.setValue(teeTime.1!, forKey: "teeTimeString")
        newDayRound.setValue(NSDate(), forKey: "timeStamp")
        
        do {
            try self.managedObjectContext.save()
        } catch {
            // Replace this implementation with code to handle the error appropriately.
            // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
            //print("Unresolved error \(error)")
            abort()
        }
        print(newDayRound)
        return newDayRound as! DayRound
    }
    
    
    
    // Create 16 number known Golfers
    func createGolfers () -> [Golfer] {
        
        let keith = Golfer.golferWithFirstName("Keith", andSurname: "Bamford", playerIdentifier: "A", inManagedObjectContext: self.managedObjectContext)
        
        keith.clubHandicap = NSNumber(double: 17.7)
        keith.winnings = NSNumber(integer: 0)
        keith.currentScore = 0
        keith.currentTourHandicap = keith.clubHandicap
        
        //    keith.playsIn = dayRound
        
        
        let alan = Golfer.golferWithFirstName("Alan", andSurname: "Bromley", playerIdentifier: "B", inManagedObjectContext: self.managedObjectContext)
        
        alan.clubHandicap = NSNumber(double: 16.1)
        alan.winnings = NSNumber(integer: 0)
        alan.currentScore = 0
        alan.currentTourHandicap = alan.clubHandicap
        
        //    alan?.playsIn = dayRound
        
        
        let bernie = Golfer.golferWithFirstName("Bernard", andSurname: "Bull", playerIdentifier: "C", inManagedObjectContext: self.managedObjectContext)
        
        bernie.clubHandicap = NSNumber(double: 27.7)
        bernie.winnings = NSNumber(integer: 0)
        bernie.currentScore = 0
        bernie.currentTourHandicap = bernie.clubHandicap
        
        //    bernie!.playsIn = self.dayRound
        
        
        let graham = Golfer.golferWithFirstName("Graham", andSurname: "Clarke", playerIdentifier: "D", inManagedObjectContext: self.managedObjectContext)
        
        graham.clubHandicap = NSNumber(double: 18.9)
        graham.winnings = NSNumber(integer: 0)
        graham.currentScore = 0
        graham.currentTourHandicap = graham.clubHandicap
        
        //    graham?.playsIn = self.dayRound
        
        
        
        let mick = Golfer.golferWithFirstName("Mick", andSurname: "Clarke", playerIdentifier: "E", inManagedObjectContext: self.managedObjectContext)
        
        mick.clubHandicap = NSNumber(double: 18.9)
        mick.winnings = NSNumber(integer: 0)
        mick.currentScore = 0
        mick.currentTourHandicap = mick.clubHandicap
        
        //    mick?.playsIn = self.dayRound
        
        
        let gary = Golfer.golferWithFirstName("Gary", andSurname: "Davies", playerIdentifier: "F", inManagedObjectContext: self.managedObjectContext)
        
        gary.clubHandicap = NSNumber(double: 10.5)
        gary.winnings = NSNumber(integer: 0)
        gary.currentScore = 0
        gary.currentTourHandicap = gary.clubHandicap
//            gary.playsIn = self.dayRound
        
        //print("Gary inserted")
        
        
        
        let mario = Golfer.golferWithFirstName("Mario", andSurname: "De Abreu", playerIdentifier: "G", inManagedObjectContext: self.managedObjectContext)
        
        mario.clubHandicap = NSNumber(double: 19.8)
        mario.winnings = NSNumber(integer: 0)
        mario.currentScore = 0
        mario.currentTourHandicap = mario.clubHandicap
        //    mario?.playsIn = self.dayRound
        
        //print("Mario inserted")
        
        
        let joe = Golfer.golferWithFirstName("Graham", andSurname: "Hill", playerIdentifier: "H", inManagedObjectContext: self.managedObjectContext)
        
        joe.clubHandicap = NSNumber(double: 18.0)
        joe.winnings = NSNumber(integer: 0)
        joe.currentScore = 0
        joe.currentTourHandicap = joe.clubHandicap
        //    joe?.playsIn = self.dayRound
        
        //print("Joe inserted")
        
        
        let jeff = Golfer.golferWithFirstName("Jeff", andSurname: "Mabbitt", playerIdentifier: "I", inManagedObjectContext: self.managedObjectContext)
        
        jeff.clubHandicap = NSNumber(double: 13.7)
        jeff.winnings = NSNumber(integer: 0)
        jeff.currentScore = 0
        jeff.currentTourHandicap = jeff.clubHandicap
        //    jeff?.playsIn = self.dayRound
        
        //print("Jeff inserted")
        
        
        let nigel = Golfer.golferWithFirstName("Nigel", andSurname: "Maqueline", playerIdentifier: "J", inManagedObjectContext: self.managedObjectContext)
        
        nigel.clubHandicap = NSNumber(double: 11.7)
        nigel.winnings = NSNumber(integer: 0)
        nigel.currentScore = 0
        nigel.currentTourHandicap = nigel.clubHandicap
        //    nigel?.playsIn = self.dayRound
        
        
        //print("Nigel inserted")
        
        
        let andrew = Golfer.golferWithFirstName("Andrew", andSurname: "Mogridge", playerIdentifier: "K", inManagedObjectContext: self.managedObjectContext)
        
        andrew.clubHandicap = NSNumber(double: 8.0)
        andrew.winnings = NSNumber(integer: 0)
        andrew.currentScore = 0
        andrew.currentTourHandicap = andrew.clubHandicap
        //    andrew?.playsIn = self.dayRound
        
        //print("Mogsy inserted")
        
        
        let liam = Golfer.golferWithFirstName("Liam", andSurname: "Rees", playerIdentifier: "L", inManagedObjectContext: self.managedObjectContext)
        
        liam.clubHandicap = NSNumber(double: 21.0)
        liam.winnings = NSNumber(integer: 0)
        liam.currentScore = 0
        liam.currentTourHandicap = liam.clubHandicap
        //    liam?.playsIn = self.dayRound
        
        //print("Liam inserted")
        
        
        let jimmy = Golfer.golferWithFirstName("Jimmy", andSurname: "Sweeney", playerIdentifier: "M", inManagedObjectContext: self.managedObjectContext)
        
        jimmy.clubHandicap = NSNumber(double: 17.9)
        jimmy.winnings = NSNumber(integer: 0)
        jimmy.currentScore = 0
        jimmy.currentTourHandicap = jimmy.clubHandicap
        //    jimmy?.playsIn = self.dayRound
        
        //print("Jimmy inserted")
        
        
        let john = Golfer.golferWithFirstName("John", andSurname: "Sweeney", playerIdentifier: "N", inManagedObjectContext: self.managedObjectContext)
        
        john.clubHandicap = NSNumber(double: 15.2)
        john.winnings = NSNumber(integer: 0)
        john.currentScore = 0
        john.currentTourHandicap = john.clubHandicap
        //    john?.playsIn = self.dayRound
        
        //print("John inserted")
        
        
        let david = Golfer.golferWithFirstName("David", andSurname: "Wilson", playerIdentifier: "O", inManagedObjectContext: self.managedObjectContext)
        
        david.clubHandicap = NSNumber(double: 11.7)
        david.winnings = NSNumber(integer: 0)
        david.currentScore = 0
        david.currentTourHandicap = david.clubHandicap
        //    david.playsIn = self.dayRound
        
        //print("Jock inserted")
        
        
        let craig = Golfer.golferWithFirstName("Craig", andSurname: "Wilson", playerIdentifier: "P", inManagedObjectContext: self.managedObjectContext)
        
        craig.clubHandicap = NSNumber(double: 24.5)
        craig.winnings = NSNumber(integer: 0)
        craig.currentScore = 0
        craig.currentTourHandicap = craig.clubHandicap
        //    craig.playsIn = self.dayRound
        
        print("Craig \(craig)")
        
        
        self.saveContext()
        
        
        return [keith, alan, bernie, graham, mick, gary, mario, joe, jeff, nigel, andrew, liam, jimmy, john, david, craig]
        
        
    }
    
    
    
    
    // MARK: - Core Data stack
    
    lazy var applicationDocumentsDirectory: NSURL = {
        // The directory the application uses to store the Core Data store file. This code uses a directory named "com.AKA.tourKeeprMatchSelector" in the application's documents Application Support directory.
        let urls = NSFileManager.defaultManager().URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask)
        return urls[urls.count-1]
    }()
    
    lazy var managedObjectModel: NSManagedObjectModel = {
        // The managed object model for the application. This property is not optional. It is a fatal error for the application not to be able to find and load its model.
        let modelURL = NSBundle.mainBundle().URLForResource("tourKeeprMatchSelector", withExtension: "momd")!
        //print("===MODEL URL=== = \(modelURL)")
        return NSManagedObjectModel(contentsOfURL: modelURL)!
    }()
    
    lazy var persistentStoreCoordinator: NSPersistentStoreCoordinator = {
        // The persistent store coordinator for the application. This implementation creates and returns a coordinator, having added the store for the application to it. This property is optional since there are legitimate error conditions that could cause the creation of the store to fail.
        // Create the coordinator and store
        let coordinator = NSPersistentStoreCoordinator(managedObjectModel: self.managedObjectModel)
        let url = self.applicationDocumentsDirectory.URLByAppendingPathComponent("SingleViewCoreData.sqlite")
        var failureReason = "There was an error creating or loading the application's saved data."
        do {
            try coordinator.addPersistentStoreWithType(NSSQLiteStoreType, configuration: nil, URL: url, options: nil)
        } catch {
            // Report any error we got.
            var dict = [String: AnyObject]()
            dict[NSLocalizedDescriptionKey] = "Failed to initialize the application's saved data"
            dict[NSLocalizedFailureReasonErrorKey] = failureReason
            
            dict[NSUnderlyingErrorKey] = error as NSError
            let wrappedError = NSError(domain: "YOUR_ERROR_DOMAIN", code: 9999, userInfo: dict)
            // Replace this with code to handle the error appropriately.
            // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
            NSLog("Unresolved error \(wrappedError), \(wrappedError.userInfo)")
            abort()
        }
        
        return coordinator
    }()
    
    lazy var managedObjectContext: NSManagedObjectContext = {
        // Returns the managed object context for the application (which is already bound to the persistent store coordinator for the application.) This property is optional since there are legitimate error conditions that could cause the creation of the context to fail.
        let coordinator = self.persistentStoreCoordinator
        var managedObjectContext = NSManagedObjectContext(concurrencyType: .MainQueueConcurrencyType)
        managedObjectContext.persistentStoreCoordinator = coordinator
        return managedObjectContext
    }()
    
    // MARK: - Core Data Saving support
    
    func saveContext () {
        if managedObjectContext.hasChanges {
            do {
                try managedObjectContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nserror = error as NSError
                NSLog("Core Data Unresolved error \(nserror), \(nserror.userInfo)")
                abort()
            }
        }
    }
    
    
    private let userCalendar = NSCalendar.currentCalendar()
    
    func dateMaker(year: Int, month: Int, day: Int, hour: Int, minute: Int) -> (date:NSDate?,dateString:String?) {
        
        var dayName = ""
        let dateComps = NSDateComponents()
        
        dateComps.calendar = userCalendar
        dateComps.year = year
        dateComps.month = month
        dateComps.day = day
        dateComps.hour = hour
        dateComps.minute = minute ?? 0
        
        let theDate = userCalendar.dateFromComponents(dateComps)
        
        let dayNo = userCalendar.components(.Weekday, fromDate: theDate!)
        
        
        
        switch (dayNo.weekday) {
        case 1: dayName = "Sunday"
        case 2: dayName = "Monday"
        case 3: dayName = "Tuesday"
        case 4: dayName = "Wednesday"
        case 5: dayName = "Thursday"
        case 6: dayName = "Friday"
        case 7: dayName = "Saturday"
        default: dayName = "Something went very wrong"
        }
        
        var minString: String = ""
        
        // Add preceding 0 if minute is less than 10
        if minute < 10 {
            minString = "0\(minute)"
        } else {
            minString = String(minute)
        }
        
        
        let monString = userCalendar.monthSymbols[month-1]
        let dateString: String = "\(dayName) \(day)th \(monString) - \(hour):\(minString)pm"
        
        return (theDate,dateString)
        
        
        
    }

}
