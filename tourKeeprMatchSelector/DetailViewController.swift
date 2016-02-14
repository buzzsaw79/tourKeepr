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
    
    
    
    let players = ["Keith Bamford", "Alan Bromley", "Bernard Bull", "Graham Clarke", "Mick Clarke", "Gary Davies", "Mario De Abreu", "Graham Hill", "Jeff Mabbitt", "Nigel Maqueline","Andrew Mogridge", "Liam Rees", "Jimmy Sweeney", "John Sweeney","David Wilson", "Craig Wilson"]
    
    
    var entrants:[Golfer] = CoreDataStack().createGolfers()
    
    

    var detailItem: AnyObject? {
        didSet {
            // Update the view.
           
        }
    }


    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.detailViewTitleBar.title = "Holidays"
        print("awakeFromNib===entrants===\(entrants)")
            }
    

    override func viewDidLoad() {
        super.viewDidLoad()
 
        self.detailViewTitleBar.title = self.dayRound?.course
        

        let dictArray = createDayOrders()
        
        if ((self.dayRound?.dayNumberIdentifier) == nil) {
            print("\n\n====== S A L G A D O S =======\n\n")
        }
        
        
        
        for (index, entrant) in self.entrants.enumerate() {
            
            let tagView = self.view.viewWithTag(index+1) as! UIButton
            tagView.setTitle(entrant.name, forState: .Normal)
            tagView.titleLabel?.font = UIFont(name: "GeezaPro-Bold", size: CGFloat(22))
            
//            //print(entrant.name)
            entrant.currentTourHandicap = entrant.clubHandicap
            
        }
        
        
    }
    
    func createDayOrders() -> Array<NSDictionary>{
        
        let playingInts = [[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],
                            [0,6,9,13,3,7,8,14,2,5,10,12,1,4,11,15],
                            [0,4,8,12,3,5,9,15,2,7,11,13,1,6,10,14],
                            [0,5,11,14,2,6,8,15,3,4,10,13,1,7,9,12],
                            [0,7,10,15,2,4,9,14,3,6,11,12,1,5,8,13]]
        
        
//        for numbers in playingInts {
//            for (index, num) in numbers.enumerate() {
//                print("Number:\(num) Index:\(index)")
//            }
//        }
        
        
//        print(playingInts)
        
        
        let day1PlayingOrder = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P"]
        let day2PlayingOrder = ["A","G","J","N","D","H","I","O","C","F","K","M","B","E","L","P"]
        let day3PlayingOrder = ["A","E","I","M","D","F","J","P","C","H","L","N","B","G","K","O"]
        let day4PlayingOrder = ["A","F","L","O","C","G","I","P","D","E","K","N","B","H","J","M"]
        
        
//        for (index,letter) in day1PlayingOrder.enumerate() {
//            let group1 = day1PlayingOrder.dropFirst(4)
//            print("Group1: \(group1) Day1PlayingOrder: \(day1PlayingOrder)")
//        }
        
        
        
        
        let day1Dict = NSDictionary(objects: players, forKeys: day1PlayingOrder) ;         print("Day1 Dictionary = \(day1Dict)")
        let day2Dict = NSDictionary(objects: players, forKeys: day2PlayingOrder)  ;    print("Day2 Dictionary = \(day2Dict)")
        let day3Dict = NSDictionary(objects: players, forKeys: day3PlayingOrder)   ; print("Day3 Dictionary = \(day3Dict)")
        let day4Dict = NSDictionary(objects: players, forKeys: day4PlayingOrder)    ; print("Day4 Dictionary = \(day4Dict)")
        
        
//        day2Dict.
        
        
        day1Dict.dictionaryWithValuesForKeys(day1PlayingOrder)
        
        
        
        
        
        
        let dictionaryArray = Array(arrayLiteral: day1Dict,day2Dict,day3Dict,day4Dict)
        
        //print(dictionaryArray)
        
        return dictionaryArray
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

