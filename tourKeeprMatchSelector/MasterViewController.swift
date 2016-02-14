//
//  MasterViewController.swift
//  tourKeeprMatchSelector
//
//  Created by Keith Bamford on 18/01/2016.
//  Copyright © 2016 AKA Consultants. All rights reserved.
//

import UIKit
import CoreData

class MasterViewController: UITableViewController, NSFetchedResultsControllerDelegate {

    var detailViewController: DetailViewController?
    var managedObjectContext = (UIApplication.sharedApplication().delegate
        as! AppDelegate).CDS.managedObjectContext
    
    
    
//    let moc = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext!


    let MOC = UIApplication.sharedApplication().delegate
    
    
    let days = (UIApplication.sharedApplication().delegate
        as! AppDelegate).CDS.createDayRounds()


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        self.navigationItem.leftBarButtonItem = self.editButtonItem()
        
//        let tableBackgroundColour = AppDelegate.globalColours().oddCellColour

//        let addButton = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: "insertNewRound:")
//        self.navigationItem.rightBarButtonItem = addButton
//        if let split = self.splitViewController {
//            let controllers = split.viewControllers
//            self.detailViewController = (controllers[controllers.count-1] as! UINavigationController).topViewController as? DetailViewController
//            
//        }
        
        
        self.title = "Courses"
        
        
        // Configure Tee Times  and Dates as NSDate(s)
//        let teeTimeDay1 = dateMaker(2016, month: 05, day: 10, hour: 13, minute: 04)
//        let teeTimeDay2 = dateMaker(2016, month: 05, day: 11, hour: 11, minute: 5)
//        let teeTimeDay3 = dateMaker(2016, month: 05, day: 12, hour: 8, minute: 42)
//        let teeTimeDay4 = dateMaker(2016, month: 05, day: 13, hour: 12, minute: 36)
//        let teeTimeDay5 = dateMaker(2016, month: 05, day: 14, hour: 10, minute: 20)


        

        print("***** days MVC *****\n \(days)")
        
        //print(teeTimeDay1.dateString!)
        //print(teeTimeDay2.dateString!)
        //print(teeTimeDay3.dateString!)
        //print(teeTimeDay4.dateString!)
        //print(teeTimeDay5.dateString!)
        
        
        // Set Up DayRounds
//        insertNewRound(1, course: "Salgados Golf Club", teeTime: teeTimeDay1)
//        insertNewRound(2, course: "Ocean Course (Vale Do Lobo)", teeTime: teeTimeDay2)
//        insertNewRound(3, course: "Pinhal Golf Course (Oceanico)", teeTime: teeTimeDay3)
//        insertNewRound(4, course: "Millennium Golf Course (Oceanico)", teeTime: teeTimeDay4)
//        insertNewRound(5, course: "Royal Course (Vale Do Lobo)", teeTime: teeTimeDay5)
        
    }

    override func viewWillAppear(animated: Bool) {
        self.clearsSelectionOnViewWillAppear = self.splitViewController!.collapsed
        super.viewWillAppear(animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
//    func insertNewRound(dayNo: Int, course: String, teeTime: (NSDate?,String?)) {
//        
//        let newRound = NSEntityDescription.insertNewObjectForEntityForName("DayRound", inManagedObjectContext: self.fetchedResultsController.managedObjectContext)
//        
//        
//        // Initialise properties
//        newRound.setValue(NSNumber(integer: dayNo), forKey: "dayNumberIdentifier")
//        newRound.setValue(course, forKey: "course")
//        newRound.setValue(teeTime.0!, forKey: "teeTime")
//        newRound.setValue(teeTime.1!, forKey: "teeTimeString")
//        newRound.setValue(NSDate(), forKey: "timeStamp")
//        
//        do {
//            try self.fetchedResultsController.managedObjectContext.save()
//        } catch {
//            // Replace this implementation with code to handle the error appropriately.
//            // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
//            //print("Unresolved error \(error)")
//            abort()
//        }
//    }
    
    
    
    
    
//    @NSManaged var dayNumberIdentifier: NSNumber? // Required
//    @NSManaged var course: String? // Required
//    @NSManaged var teeTime: NSDate? // Required
//    
//    @NSManaged var avgScore: NSNumber?
//    
//    @NSManaged var totalScores: NSNumber?
//    @NSManaged var handicapAdjustment: NSNumber?
//    
//    @NSManaged var timeStamp: NSDate?
//    
//    
//    @NSManaged var golfers: NSSet?
    
    
    

    // MARK: - Segues

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
            let object = self.days[indexPath.row]
                let navController = segue.destinationViewController as! UINavigationController
                
                let controller = navController.topViewController as! DetailViewController
//                controller.managedObjectContext = self.managedObjectContext
                controller.navigationItem.leftBarButtonItem = self.splitViewController?.displayModeButtonItem()
                controller.navigationItem.leftItemsSupplementBackButton = true
                
                object.avgScore([12,23,21,45])
                
                controller.view.backgroundColor = UIColor.whiteColor()
                
                switch Int(object.dayNumberIdentifier!) {
                case 1:
                    
                    controller.bckGroundImageView.image = UIImage(named: "SalgadosGC.jpg")
                    controller.dayRound?.dayNumberIdentifier = object.dayNumberIdentifier
                case 2:
//                    controller.view.backgroundColor = UIColor.blueColor()
                    controller.bckGroundImageView.image = UIImage(named: "ocean2.jpg")
                    controller.dayRound = object
                case 3:
//                    controller.view.backgroundColor = UIColor.greenColor()
                    controller.bckGroundImageView.image = UIImage(named: "Pinhal.jpg")
                    controller.dayRound = object
                case 4:
//                    controller.view.backgroundColor = UIColor.yellowColor()
                    controller.bckGroundImageView.image = UIImage(named: "millenniumGC.jpg")
                    controller.dayRound = object
                case 5:
//                    controller.view.backgroundColor = UIColor.brownColor()
                    controller.bckGroundImageView.image = UIImage(named: "valDaLobo.jpg")
                    controller.dayRound = object
                    
                default:
                    break;
                }
                
                
                //print(object.course)
                
                
                
            }
        }
    }

    // MARK: - Table View

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return self.fetchedResultsController.sections?.count ?? 0
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        let sectionInfo = self.fetchedResultsController.sections![section]
//        return sectionInfo.numberOfObjects
        return days.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        self.configureCell(cell, atIndexPath: indexPath)
        return cell
    }

    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }

    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            let context = self.managedObjectContext
            context.deleteObject(self.fetchedResultsController.objectAtIndexPath(indexPath) as! NSManagedObject)
                
            do {
                try context.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                ////print("Unresolved error \(error), \(error.userInfo)")
                abort()
            }
        }
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return CGFloat(96)
    }

    func configureCell(cell: UITableViewCell, atIndexPath indexPath: NSIndexPath) {
//        let object = self.fetchedResultsController.objectAtIndexPath(indexPath)
//        cell.textLabel!.text = object.valueForKey("course")!.description
//        cell.detailTextLabel!.text = object.valueForKey("teeTimeString")?.description ?? "Failed to get teeTimeString"
        
        cell.textLabel!.text = days[indexPath.row].course
        cell.detailTextLabel!.text = days[indexPath.row].teeTimeString
        
        
    }

    // MARK: - Fetched results controller

    var fetchedResultsController: NSFetchedResultsController {
        if _fetchedResultsController != nil {
            return _fetchedResultsController!
        }
        
        let fetchRequest = NSFetchRequest()
        // Edit the entity name as appropriate.
        let entity = NSEntityDescription.entityForName("DayRound", inManagedObjectContext: self.managedObjectContext)
        fetchRequest.entity = entity
        
        // Set the batch size to a suitable number.
        fetchRequest.fetchBatchSize = 16
        
        // Edit the sort key as appropriate.
        let sortDescriptor = NSSortDescriptor(key: "dayNumberIdentifier", ascending: true)
        
        fetchRequest.sortDescriptors = [sortDescriptor]
        
        // Edit the section name key path and cache name if appropriate.
        // nil for section name key path means "no sections".
        let aFetchedResultsController = NSFetchedResultsController(fetchRequest: fetchRequest, managedObjectContext: self.managedObjectContext, sectionNameKeyPath: nil, cacheName: "Master")
        aFetchedResultsController.delegate = self
        _fetchedResultsController = aFetchedResultsController
        
        do {
            try _fetchedResultsController!.performFetch()
        } catch {
             // Replace this implementation with code to handle the error appropriately.
             // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development. 
//             //print("Unresolved error \(error), \(error.userInfo)")
             abort()
        }
        
        return _fetchedResultsController!
    }    
    var _fetchedResultsController: NSFetchedResultsController? = nil

    func controllerWillChangeContent(controller: NSFetchedResultsController) {
        self.tableView.beginUpdates()
    }

    func controller(controller: NSFetchedResultsController, didChangeSection sectionInfo: NSFetchedResultsSectionInfo, atIndex sectionIndex: Int, forChangeType type: NSFetchedResultsChangeType) {
        switch type {
            case .Insert:
                self.tableView.insertSections(NSIndexSet(index: sectionIndex), withRowAnimation: .Fade)
            case .Delete:
                self.tableView.deleteSections(NSIndexSet(index: sectionIndex), withRowAnimation: .Fade)
            default:
                return
        }
    }

    func controller(controller: NSFetchedResultsController, didChangeObject anObject: AnyObject, atIndexPath indexPath: NSIndexPath?, forChangeType type: NSFetchedResultsChangeType, newIndexPath: NSIndexPath?) {
        switch type {
            case .Insert:
                tableView.insertRowsAtIndexPaths([newIndexPath!], withRowAnimation: .Fade)
            case .Delete:
                tableView.deleteRowsAtIndexPaths([indexPath!], withRowAnimation: .Fade)
            case .Update:
                self.configureCell(tableView.cellForRowAtIndexPath(indexPath!)!, atIndexPath: indexPath!)
            case .Move:
                tableView.deleteRowsAtIndexPaths([indexPath!], withRowAnimation: .Fade)
                tableView.insertRowsAtIndexPaths([newIndexPath!], withRowAnimation: .Fade)
        }
    }

    func controllerDidChangeContent(controller: NSFetchedResultsController) {
        self.tableView.endUpdates()
    }

    /*
     // Implementing the above methods to update the table view in response to individual changes may have performance implications if a large number of changes are made simultaneously. If this proves to be an issue, you can instead just implement controllerDidChangeContent: which notifies the delegate that all section and object changes have been processed.
     
     func controllerDidChangeContent(controller: NSFetchedResultsController) {
         // In the simplest, most efficient, case, reload the table view.
         self.tableView.reloadData()
     }
     */
    
    //MARK: -
    //MARK: Helper Functions etc
    
//    private let userCalendar = NSCalendar.currentCalendar()
//    
//    func dateMaker(year: Int, month: Int, day: Int, hour: Int, minute: Int) -> (date:NSDate?,dateString:String?) {
//        
//       var dayName = ""
//        let dateComps = NSDateComponents()
//        
//        dateComps.calendar = userCalendar
//        dateComps.year = year
//        dateComps.month = month
//        dateComps.day = day
//        dateComps.hour = hour
//        dateComps.minute = minute ?? 0
//        
//        let theDate = userCalendar.dateFromComponents(dateComps)
//        
//        let dayNo = userCalendar.components(.Weekday, fromDate: theDate!)
//        
//        
//        
//        switch (dayNo.weekday) {
//        case 1: dayName = "Sunday"
//        case 2: dayName = "Monday"
//        case 3: dayName = "Tuesday"
//        case 4: dayName = "Wednesday"
//        case 5: dayName = "Thursday"
//        case 6: dayName = "Friday"
//        case 7: dayName = "Saturday"
//        default: dayName = "Something went very wrong"
//        }
//        
//        var minString: String = ""
//        
//        // Add preceding 0 if minute is less than 10
//        if minute < 10 {
//            minString = "0\(minute)"
//        } else {
//            minString = String(minute)
//        }
//
//        
//        let monString = userCalendar.monthSymbols[month-1]
//        let dateString: String = "\(dayName) \(day)th \(monString) - \(hour):\(minString)pm"
//        
//        return (theDate,dateString)
//        
//        
//        
//    }

}

