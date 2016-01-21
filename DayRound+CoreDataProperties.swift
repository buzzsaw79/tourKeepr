//
//  DayRound+CoreDataProperties.swift
//  tourKeeprMatchSelector
//
//  Created by Keith Bamford on 21/01/2016.
//  Copyright © 2016 AKA Consultants. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension DayRound {

    @NSManaged var avgScore: NSNumber?
    @NSManaged var course: String?
    @NSManaged var handicapAdjustment: NSNumber?
    @NSManaged var teeTime: NSDate?
    @NSManaged var timeStamp: NSDate?
    @NSManaged var totalScores: NSNumber?
    @NSManaged var dayNumberIdentifier: NSNumber?
    @NSManaged var teeTimeString: String?
    @NSManaged var golfers: NSSet?

}
