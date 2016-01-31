//
//  Golfer.swift
//  tourKeeprMatchSelector
//
//  Created by Keith Bamford on 19/01/2016.
//  Copyright © 2016 AKA Consultants. All rights reserved.
//

import Foundation
import CoreData

@objc(Golfer)
class Golfer: NSManagedObject {

// Insert code here to add functionality to your managed object subclass
    
    lazy var name: String = {
        let fullName = "\(self.firstName!) \(self.surname!)"
        return fullName
    }()
    
    var context:NSManagedObjectContext?
    
    class func golferWithFirstName(first: String, andSurname surname:String, playerIdentifier identifier: String, inManagedObjectContext context: NSManagedObjectContext) -> Golfer {
        
        // Gets Entity from Core Data
        let golferEntity = NSEntityDescription.entityForName("Golfer", inManagedObjectContext: context)
        
        var matches: Array<AnyObject>?
        
        var golfer = Golfer(entity: golferEntity!, insertIntoManagedObjectContext: context)
        
        let request = NSFetchRequest(entityName: "Golfer")
        // Check golfer
        request.predicate = NSPredicate(format: "identifier = %@", identifier)
        
        //var error: NSError?
        
        
       do {
        matches = try context.executeFetchRequest(request) //as! Golfer
       } catch {
            print("Ooops Fetch Request Failed: \(error)")
            abort()
        }
        
        
        // Conditionally Create Golfers
        
        
        if (matches == nil || (matches!.count > 1)) {
            // Handle error
            print("Matches = NIL or Matches Count > 1") }
        else if (matches!.count == 1){
            golfer = (matches?.last)! as! Golfer
            print("Matches Count = 1")
        } else if (matches?.count == 0){
            golfer = NSEntityDescription.insertNewObjectForEntityForName("Golfer", inManagedObjectContext: context) as! Golfer
            golfer.firstName = first
            golfer.surname = surname
            golfer.identifier = identifier
            print("Matches Count = 0")
        }
        
        print("MATCH!!! \(matches)")
        
//       do {
//            try context.save()
//       } catch {
//           // Replace this implementation with code to handle the error appropriately.
//           // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
//           print("Unresolved error \(error)")
//           abort()
//        }
        
        
        
        return golfer
    }
    
    
//    func tester() {
//    
//        self.golferWithFirstName("Keith", andSurname: "Bamford", playerIdentifier: "Player A", inManagedObjectContext: self.managedObjectContext!)
//        golferWithFirstName("Alan", andSurname: "Bromley", playerIdentifier: "Player B", inManagedObjectContext: self.managedObjectContext!)
//    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

//    override init(entity: NSEntityDescription, insertIntoManagedObjectContext context: NSManagedObjectContext?) {
//        <#code#>
//    }
}
