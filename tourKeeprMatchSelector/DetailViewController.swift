//
//  DetailViewController.swift
//  tourKeeprMatchSelector
//
//  Created by Keith Bamford on 18/01/2016.
//  Copyright © 2016 AKA Consultants. All rights reserved.
//

import UIKit
import CoreData

class DetailViewController: UIViewController {

    @IBOutlet weak var detailViewTitleBar: UINavigationItem!
    @IBOutlet weak var bckGroundImageView: UIImageView!

    let managedObjectContext = (UIApplication.sharedApplication().delegate as! AppDelegate).CDS.managedObjectContext
    
    var dayRound: DayRound?
    
    private var golferIdDict = [String:String]()
    
    let players = ["Keith Bamford", "Alan Bromley", "Bernard Bull", "Graham Clarke", "Mick Clarke", "Gary Davies", "Mario De Abreu", "Graham Hill", "Jeff Mabbitt", "Nigel Maqueline","Andrew Mogridge", "Liam Rees", "Jimmy Sweeney", "John Sweeney","David Wilson", "Craig Wilson"]
    
    
//    var entrants:[Golfer] = CoreDataStack().createGolfers()
    var entrants = (UIApplication.sharedApplication().delegate as! AppDelegate).CDS.createGolfers()
    

    var detailItem: AnyObject? {
        didSet {
            // Update the view.
           
        }
    }


    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.detailViewTitleBar.title = "Holidays"
//        print("DVC AwakeFromNib\n===entrants===\(entrants)")
            }
    

    override func viewDidLoad() {
        super.viewDidLoad()
 
        self.detailViewTitleBar.title = self.dayRound?.course
        

        let dictArray = createDayOrders()
        
        
//        self.dayRound?.golfers = NSSet.init(array: self.entrants)
        
        if ((self.dayRound?.dayNumberIdentifier) == nil) {
            self.detailViewTitleBar.title = "====== P O R T U G A L ======="
        }
        
//        let matchesDay2 = [["A","G","J","N"],["D","H","I","O"],["C","F","K","M"],["B","E","L","P"]]
//        let playingOrderDay1 = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P"]
//        let playingOrderDay2 = ["A","G","J","N","D","H","I","O","C","F","K","M","B","E","L","P"]
        
//        for (index, entrant) in self.entrants.enumerate() {
        
            
            
//            golferIdDict.updateValue(entrant.name, forKey: playingOrderDay1[index])
//            golferIdDict.updateValue(entrant.name, forKey: entrant.identifier)
            
//            if id == playingOrderDay2[index] {
//                print(golferIdDict)
//            }
            
//            let tagView = self.view.viewWithTag(index+1) as! UIButton
//
//            let butName = golferIdDict[playingOrderDay2[index]]
//            
//            tagView.setTitle(entrant.identifier, forState: .Normal)
//            tagView.titleLabel?.font = UIFont(name: "GeezaPro-Bold", size: CGFloat(22))

            
//        }
//        print("\n\ngolferIdDict: \(golferIdDict)")
        
        updateUI()
        
    }
    
    
//    Day4 Dictionary = {
//    A = "Keith Bamford";
//    B = "Jimmy Sweeney";
//    C = "Mick Clarke";
//    D = "Jeff Mabbitt";
//    E = "Nigel Maqueline";
//    F = "Alan Bromley";
//    G = "Gary Davies";
//    H = "John Sweeney";
//    I = "Mario De Abreu";
//    J = "David Wilson";
//    K = "Andrew Mogridge";
//    L = "Bernard Bull";
//    M = "Craig Wilson";
//    N = "Liam Rees";
//    O = "Graham Clarke";
//    P = "Graham Hill";
//    }
    
    
    
    func createDayOrders() -> Array<NSDictionary>{
        
        let playingInts = [[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],
                            [0,6,9,13,3,7,8,14,2,5,10,12,1,4,11,15],
                            [0,4,8,12,3,5,9,15,2,7,11,13,1,6,10,14],
                            [0,5,11,14,2,6,8,15,3,4,10,13,1,7,9,12],
                            [0,7,10,15,2,4,9,14,3,6,11,12,1,5,8,13]]

        
        
        let matchesDay1 = [["A","B","C","D"],["E","F","G","H"],["I","J","K","L"],["M","N","O","P"]]
        let matchesDay2 = [["A","G","J","N"],["D","H","I","O"],["C","F","K","M"],["B","E","L","P"]]
        let matchesDay3 = [["A","E","I","M"],["D","F","J","P"],["C","H","L","N"],["B","G","K","O"]]
        let matchesDay4 = [["A","F","L","O"],["C","G","I","P"],["D","E","K","N"],["B","H","J","M"]]
        // Temporarily set Day5 to Alphabetic order as Day1
        let matchesDay5 = [["A","B","C","D"],["E","F","G","H"],["I","J","K","L"],["M","N","O","P"]]
        
        
        
        let day1PlayingOrder = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P"]
        let day2PlayingOrder = ["A","G","J","N","D","H","I","O","C","F","K","M","B","E","L","P"]
        let day3PlayingOrder = ["A","E","I","M","D","F","J","P","C","H","L","N","B","G","K","O"]
        let day4PlayingOrder = ["A","F","L","O","C","G","I","P","D","E","K","N","B","H","J","M"]
        
        
        
        
        let day1Dict = NSDictionary(objects: entrants, forKeys: day1PlayingOrder) ;         print("Day1 Dictionary = \(day1Dict)")
        let day2Dict = NSDictionary(objects: players, forKeys: day2PlayingOrder)  ;   // print("Day2 Dictionary = \(day2Dict)")
        let day3Dict = NSDictionary(objects: players, forKeys: day3PlayingOrder)   ; //print("Day3 Dictionary = \(day3Dict)")
        let day4Dict = NSDictionary(objects: players, forKeys: day4PlayingOrder)    ;// print("Day4 Dictionary = \(day4Dict)")
        
        
//        day2Dict.
        
        
        day1Dict.dictionaryWithValuesForKeys(day1PlayingOrder)
        
        
        
        
        
        
        let dictionaryArray = Array(arrayLiteral: day1Dict,day2Dict,day3Dict,day4Dict)
        
        //print(dictionaryArray)
        
        return dictionaryArray
    
    }
    
    
    
    
    func updateUI() {
        
        let playingOrderDay1 = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P"]
        let playingOrderDay2 = ["A","G","J","N","D","H","I","O","C","F","K","M","B","E","L","P"]
        let playingOrderDay3 = ["A","E","I","M","D","F","J","P","C","H","L","N","B","G","K","O"]
        let playingOrderDay4 = ["A","F","L","O","C","G","I","P","D","E","K","N","B","H","J","M"]
        
        // Populate the golferIdDict
        for entrant in entrants {
            golferIdDict.updateValue(entrant.name, forKey: entrant.identifier)
        }
        
        
        
        //        for entrant in entrants {
        //            let id = entrant.identifier
        //        }
        
        var playingOrder = playingOrderDay1
        
        if let dayNo = self.dayRound?.dayNumberIdentifier {
            
            switch (dayNo) as Int {
            case 1:
                playingOrder = playingOrderDay1
            case 2:
                playingOrder = playingOrderDay2
            case 3:
                playingOrder = playingOrderDay3
            case 4:
                playingOrder = playingOrderDay4
            case 5:
                playingOrder = playingOrderDay1
            default:
                break;
            }
        }
        
        // Update the Golfer buttons
        for (index, _) in self.entrants.enumerate() {
            
            let tagView = self.view.viewWithTag(index+1) as! UIButton
            var butName:String?
            if self.dayRound != nil {
                butName = golferIdDict[playingOrder[index]]
            } else {
                butName = "Player \(playingOrder[index])"
            }
            tagView.setTitle(butName, forState: .Normal)
            tagView.titleLabel?.font = UIFont(name: "GeezaPro-Bold", size: CGFloat(22))
            
            
        }
        
        
    }



    @IBAction func playerAClicked(sender: UIButton) {
        
        // Present Golfer ViewController Modally?
        
        switch (sender.tag) {
        case 1:
            sender.setTitle("Bollocks", forState: .Normal)
        case 2:
            sender.setTitle("Crap", forState: .Normal)
        case 3:
            sender.setTitle("Bullshit", forState: .Normal)
        case 4:
            sender.setTitle("Fiddle-dy", forState: .Normal)
            
        default:
            break;
        }
        
        //        sender.setTitle("Keith Bamford", forState: .Normal)
        //print("Button Clicked")
    }

}

