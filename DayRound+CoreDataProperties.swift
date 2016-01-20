//
//  DayRound+CoreDataProperties.swift
//  tourKeeprMatchSelector
//
//  Created by Keith Bamford on 20/01/2016.
//  Copyright © 2016 AKA Consultants. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension DayRound {
    
    @NSManaged var dayNumberIdentifier: NSNumber? // Required
    @NSManaged var course: String? // Required
    @NSManaged var teeTime: NSDate? // Required

    @NSManaged var avgScore: NSNumber?
    
    @NSManaged var totalScores: NSNumber?
    @NSManaged var handicapAdjustment: NSNumber?
    
    @NSManaged var timeStamp: NSDate?
    
    
    @NSManaged var golfers: NSSet?

}
