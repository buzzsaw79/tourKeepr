//
//  Golfer+CoreDataProperties.swift
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

extension Golfer {

    @NSManaged var clubHandicap: NSNumber?
    @NSManaged var currentTourHandicap: NSNumber?
    @NSManaged var firstName: String?
    @NSManaged var identifier: String?
    @NSManaged var scoreDay1: NSNumber?
    @NSManaged var scoreDay2: NSNumber?
    @NSManaged var scoreDay3: NSNumber?
    @NSManaged var scoreDay4: NSNumber?
    @NSManaged var scoreDay5: NSNumber?
    @NSManaged var surname: String?
    @NSManaged var winnings: NSNumber?
    @NSManaged var playsIn: DayRound?

}
