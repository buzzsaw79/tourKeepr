//
//  DayRound.swift
//  tourKeeprMatchSelector
//
//  Created by Keith Bamford on 19/01/2016.
//  Copyright © 2016 AKA Consultants. All rights reserved.
//

import Foundation
import CoreData


class DayRound: NSManagedObject {

// Insert code here to add functionality to your managed object subclass
    
    
//    override init(entity: NSEntityDescription, insertIntoManagedObjectContext context: NSManagedObjectContext?) {
//        super.init(entity: <#T##NSEntityDescription#>, insertIntoManagedObjectContext: <#T##NSManagedObjectContext?#>)
//    }
    
    
    private var _golfers: NSSet {
        get {
            return self.golfers!
        }
    }
    
    let dayOrder:[String] = []
    
    func avgScore(scores:[Int]) -> Double {
        var sum = 0
        for score in scores {
            sum = sum + score
            
        }
        
        return Double(sum)/Double(scores.count)
        
    }

}