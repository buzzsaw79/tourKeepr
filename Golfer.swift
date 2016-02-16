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
    
    lazy var name: String = {
        let fullName = "\(self.firstName) \(self.surname)"
        return fullName
    }()
    
    var context:NSManagedObjectContext?
    
    class func golferWithFirstName(first: String, andSurname surname:String, playerIdentifier identifier: String, inManagedObjectContext context: NSManagedObjectContext) -> Golfer {
        
        // Gets Entity from Core Data
//        let golferEntity = NSEntityDescription.entityForName("Golfer", inManagedObjectContext: context)
        
        var matches: Array<AnyObject>?
        
//        var golfer = Golfer(entity: golferEntity!, insertIntoManagedObjectContext: context)
        
        var golfer: Golfer? = nil
        
//        let newGolfer = NSEntityDescription.insertNewObjectForEntityForName("Golfer", inManagedObjectContext: context)
        
        let request = NSFetchRequest(entityName: "Golfer")
        // Check golfer
        request.predicate = NSPredicate(format: "identifier = %@", identifier)
        
        //var error: NSError?
        
        
       do {
        matches = try context.executeFetchRequest(request) as! Array<Golfer>
       } catch {
            print("Ooops Fetch Request Failed: \(error)")
            abort()
        }
        
        
        // Conditionally Create Golfers
        
        
        if (matches == nil || (matches!.count > 1)) {
            // Handle error
            print("Matches = NIL or Matches Count > 1") }
        else if (matches!.count == 1){
            golfer = (matches?.last)! as? Golfer
            
//            print("Matches Count = 1")
            
        } else if (matches?.count == 0){
            golfer = NSEntityDescription.insertNewObjectForEntityForName("Golfer", inManagedObjectContext: context) as? Golfer
            golfer!.firstName = first
            golfer!.surname = surname
            golfer!.identifier = identifier
            
            print("Matches Count = 0\ngolferId: \(golfer!.objectID)")
            
        }
        
        //Instantiate the "name" lazy var
        
        _ = golfer!.name
        
        

//        print("------ G O L F E R ------\n\(golfer.firstName!) \(golfer.surname!) \(golfer.identifier!) \(golfer.name)")
        
//        do {
//            try context.save()
//        } catch {
//            print("Core Data Error \()")
//            abort()
//        }
        
        return golfer!
    }
 
    
    
    
    
    
    

//    override init(entity: NSEntityDescription, insertIntoManagedObjectContext context: NSManagedObjectContext?) {
//        <#code#>
//    }
}
