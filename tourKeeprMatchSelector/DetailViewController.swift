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

    var managedObjectContext: NSManagedObjectContext?
    var dayRound: DayRound?
    
    
    
    let players = ["Keith Bamford", "Alan Bromley", "Bernard Bull", "Graham Clarke", "Mick Clarke", "Gary Davies", "Mario De Abreu", "Graham Hill", "Jeff Mabbitt", "Nigel Maqueline","Andrew Mogridge", "Liam Rees", "Jimmy Sweeney", "John Sweeney","David Wilson", "Craig Wilson"]
    
    
    var entrants:[Golfer] {
        // Create Golfers
        let keith: Golfer? = Golfer.golferWithFirstName("Keith", andSurname: "Bamford", playerIdentifier: "Player A", inManagedObjectContext: self.managedObjectContext!)
        
        keith?.clubHandicap = NSNumber(double: 17.7)
        keith?.winnings = NSNumber(integer: 0)
        keith?.currentScore = 0
        
        //print("Ooooh I've been inserted")
        //print(keith)
        
        
        
        let alan: Golfer? = Golfer.golferWithFirstName("Alan", andSurname: "Bromley", playerIdentifier: "Player B", inManagedObjectContext: self.managedObjectContext!)
        
        alan?.clubHandicap = NSNumber(double: 16.1)
        alan?.winnings = NSNumber(integer: 0)
        alan?.currentScore = 0
        
        //print("Alan inserted")
        
        
        let bernie: Golfer? = Golfer.golferWithFirstName("Bernard", andSurname: "Bull", playerIdentifier: "Player C", inManagedObjectContext: self.managedObjectContext!)
        
        bernie?.clubHandicap = NSNumber(double: 27.7)
        bernie?.winnings = NSNumber(integer: 0)
        bernie?.currentScore = 0
        
        //print("Bernie inserted")
        
        
        let graham: Golfer? = Golfer.golferWithFirstName("Graham", andSurname: "Clarke", playerIdentifier: "Player D", inManagedObjectContext: self.managedObjectContext!)
        
        graham?.clubHandicap = NSNumber(double: 18.9)
        graham?.winnings = NSNumber(integer: 0)
        graham?.currentScore = 0
        
        //print("Graham inserted")
        
        
        let mick: Golfer? = Golfer.golferWithFirstName("Mick", andSurname: "Clarke", playerIdentifier: "Player E", inManagedObjectContext: self.managedObjectContext!)
        
        mick?.clubHandicap = NSNumber(double: 18.9)
        mick?.winnings = NSNumber(integer: 0)
        mick?.currentScore = 0
        
        //print("Mick inserted")
        
        
        let gary: Golfer? = Golfer.golferWithFirstName("Gary", andSurname: "Davies", playerIdentifier: "Player F", inManagedObjectContext: self.managedObjectContext!)
        
        gary?.clubHandicap = NSNumber(double: 10.5)
        gary?.winnings = NSNumber(integer: 0)
        gary?.currentScore = 0
        
        //print("Gary inserted")
        
        
        
        let mario: Golfer? = Golfer.golferWithFirstName("Mario", andSurname: "De Abreu", playerIdentifier: "Player G", inManagedObjectContext: self.managedObjectContext!)
        
        mario?.clubHandicap = NSNumber(double: 19.8)
        mario?.winnings = NSNumber(integer: 0)
        mario?.currentScore = 0
        
        //print("Mario inserted")
        
        
        let joe: Golfer? = Golfer.golferWithFirstName("Graham", andSurname: "Hill", playerIdentifier: "Player H", inManagedObjectContext: self.managedObjectContext!)
        
        joe?.clubHandicap = NSNumber(double: 18.0)
        joe?.winnings = NSNumber(integer: 0)
        joe?.currentScore = 0
        
        //print("Joe inserted")
        
        
        let jeff: Golfer? = Golfer.golferWithFirstName("Jeff", andSurname: "Mabbitt", playerIdentifier: "Player I", inManagedObjectContext: self.managedObjectContext!)
        
        jeff?.clubHandicap = NSNumber(double: 13.7)
        jeff?.winnings = NSNumber(integer: 0)
        jeff?.currentScore = 0
        
        //print("Jeff inserted")
        
        
        let nigel: Golfer? = Golfer.golferWithFirstName("Nigel", andSurname: "Maqueline", playerIdentifier: "Player J", inManagedObjectContext: self.managedObjectContext!)
        
        nigel?.clubHandicap = NSNumber(double: 11.7)
        nigel?.winnings = NSNumber(integer: 0)
        nigel?.currentScore = 0
        
        //print("Nigel inserted")
        
        
        let andrew: Golfer? = Golfer.golferWithFirstName("Andrew", andSurname: "Mogridge", playerIdentifier: "Player K", inManagedObjectContext: self.managedObjectContext!)
        
        andrew?.clubHandicap = NSNumber(double: 8.0)
        andrew?.winnings = NSNumber(integer: 0)
        andrew?.currentScore = 0
        
        //print("Mogsy inserted")
        
        
        let liam: Golfer? = Golfer.golferWithFirstName("Liam", andSurname: "Rees", playerIdentifier: "Player L", inManagedObjectContext: self.managedObjectContext!)
        
        liam?.clubHandicap = NSNumber(double: 21.0)
        liam?.winnings = NSNumber(integer: 0)
        liam?.currentScore = 0
        
        //print("Liam inserted")
        
        
        let jimmy: Golfer? = Golfer.golferWithFirstName("Jimmy", andSurname: "Sweeney", playerIdentifier: "Player M", inManagedObjectContext: self.managedObjectContext!)
        
        jimmy?.clubHandicap = NSNumber(double: 17.9)
        jimmy?.winnings = NSNumber(integer: 0)
        jimmy?.currentScore = 0
        
        //print("Jimmy inserted")
        
        
        let john: Golfer? = Golfer.golferWithFirstName("John", andSurname: "Sweeney", playerIdentifier: "Player N", inManagedObjectContext: self.managedObjectContext!)
        
        john?.clubHandicap = NSNumber(double: 15.2)
        john?.winnings = NSNumber(integer: 0)
        john?.currentScore = 0
        
        //print("John inserted")
        
        
        let david = Golfer.golferWithFirstName("David", andSurname: "Wilson", playerIdentifier: "Player O", inManagedObjectContext: self.managedObjectContext!)
        
        david.clubHandicap = NSNumber(double: 11.7)
        david.winnings = NSNumber(integer: 0)
        david.currentScore = 0
        
        //print("Jock inserted")
        
        
        let craig = Golfer.golferWithFirstName("Craig", andSurname: "Wilson", playerIdentifier: "Player P", inManagedObjectContext: self.managedObjectContext!)
        
        craig.clubHandicap = NSNumber(double: 24.5)
        craig.winnings = NSNumber(integer: 0)
        craig.currentScore = 0
        
        //print("Craig inserted")
        
        
        let entrants = [keith!,alan!,bernie!,graham!,mick!,gary!,mario!,joe!,jeff!,nigel!,andrew!,liam!,jimmy!,john!,david,craig]
        
        
        
        
        return entrants
    }

    var detailItem: AnyObject? {
        didSet {
            // Update the view.
           
        }
    }


    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.detailViewTitleBar.title = "Holidays"
            }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        self.detailViewTitleBar.title = self.dayRound?.course
        
        
       
        

        
//        let tagView16 = self.view.viewWithTag(9) as! UIButton
//        tagView16.setTitle("Keith Bamford", forState: .Normal)
//        tagView16.setTitle("Brilliant", forState: .Highlighted)
        
//        //print("TAGVIEW \(tagView16)")
        
        
        
        
//        for (var i = 1; i <= self.entrants.count; i++) {
//            let tagView = self.view.viewWithTag(i) as! UIButton
//            tagView.setTitle(players[i-1], forState: .Normal)
//            tagView.titleLabel?.font = UIFont(name: "GeezaPro-Bold", size: CGFloat(22))
//        }
        let dictArray = createDayOrders()
        
        
        
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
        
        
        for num in playingInts {
            print(num)
        }
        
        
//        print(playingInts)
        
        
        let day1PlayingOrder = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P"]
        let day2PlayingOrder = ["A","G","J","N","D","H","I","O","C","F","K","M","B","E","L","P"]
        let day3PlayingOrder = ["A","E","I","M","D","F","J","P","C","H","L","N","B","G","K","O"]
        let day4PlayingOrder = ["A","F","L","O","C","G","I","P","D","E","K","N","B","H","J","M"]
        
        
        let day1Dict = NSDictionary(objects: players, forKeys: day1PlayingOrder) ;         print("Day1 = \(day1Dict)")
        let day2Dict = NSDictionary(objects: players, forKeys: day2PlayingOrder)  ;    print("Day2 = \(day2Dict)")
        let day3Dict = NSDictionary(objects: players, forKeys: day3PlayingOrder)   ; print("Day3 = \(day3Dict)")
        let day4Dict = NSDictionary(objects: players, forKeys: day4PlayingOrder)    ; print("Day4 = \(day4Dict)")
        
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

