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
    @IBOutlet weak var detailDescriptionLabel: UILabel!
    var managedObjectContext: NSManagedObjectContext?
    var dayRound: DayRound?
    
    var entrants:[Golfer] {
        // Create Golfers
        let keith: Golfer? = Golfer.golferWithFirstName("Keith", andSurname: "Bamford", playerIdentifier: "Player A", inManagedObjectContext: self.managedObjectContext!)
        
        keith?.clubHandicap = NSNumber(double: 17.7)
        keith?.winnings = NSNumber(integer: 0)
        keith?.currentScore = 0
        
        print("Ooooh I've been inserted")
        print(keith)
        
        
        
        let alan: Golfer? = Golfer.golferWithFirstName("Alan", andSurname: "Bromley", playerIdentifier: "Player B", inManagedObjectContext: self.managedObjectContext!)
        
        alan?.clubHandicap = NSNumber(double: 16.1)
        alan?.winnings = NSNumber(integer: 0)
        alan?.currentScore = 0
        
        print("Alan inserted")
        
        
        let bernie: Golfer? = Golfer.golferWithFirstName("Bernard", andSurname: "Bull", playerIdentifier: "Player C", inManagedObjectContext: self.managedObjectContext!)
        
        bernie?.clubHandicap = NSNumber(double: 27.7)
        bernie?.winnings = NSNumber(integer: 0)
        bernie?.currentScore = 0
        
        print("Bernie inserted")
        
        
        let graham: Golfer? = Golfer.golferWithFirstName("Graham", andSurname: "Clarke", playerIdentifier: "Player D", inManagedObjectContext: self.managedObjectContext!)
        
        graham?.clubHandicap = NSNumber(double: 18.9)
        graham?.winnings = NSNumber(integer: 0)
        graham?.currentScore = 0
        
        print("Graham inserted")
        
        
        let mick: Golfer? = Golfer.golferWithFirstName("Mick", andSurname: "Clarke", playerIdentifier: "Player E", inManagedObjectContext: self.managedObjectContext!)
        
        mick?.clubHandicap = NSNumber(double: 18.9)
        mick?.winnings = NSNumber(integer: 0)
        mick?.currentScore = 0
        
        print("Mick inserted")
        
        
        let gary: Golfer? = Golfer.golferWithFirstName("Gary", andSurname: "Davies", playerIdentifier: "Player F", inManagedObjectContext: self.managedObjectContext!)
        
        gary?.clubHandicap = NSNumber(double: 10.5)
        gary?.winnings = NSNumber(integer: 0)
        gary?.currentScore = 0
        
        print("Gary inserted")
        
        
        
        let mario: Golfer? = Golfer.golferWithFirstName("Mario", andSurname: "De Abreu", playerIdentifier: "Player G", inManagedObjectContext: self.managedObjectContext!)
        
        mario?.clubHandicap = NSNumber(double: 19.8)
        mario?.winnings = NSNumber(integer: 0)
        mario?.currentScore = 0
        
        print("Mario inserted")
        
        
        let joe: Golfer? = Golfer.golferWithFirstName("Graham", andSurname: "Hill", playerIdentifier: "Player H", inManagedObjectContext: self.managedObjectContext!)
        
        joe?.clubHandicap = NSNumber(double: 18.0)
        joe?.winnings = NSNumber(integer: 0)
        joe?.currentScore = 0
        
        print("Joe inserted")
        
        
        let jeff: Golfer? = Golfer.golferWithFirstName("Jeff", andSurname: "Mabbitt", playerIdentifier: "Player I", inManagedObjectContext: self.managedObjectContext!)
        
        jeff?.clubHandicap = NSNumber(double: 13.7)
        jeff?.winnings = NSNumber(integer: 0)
        jeff?.currentScore = 0
        
        print("Jeff inserted")
        
        
        let nigel: Golfer? = Golfer.golferWithFirstName("Nigel", andSurname: "Maqueline", playerIdentifier: "Player J", inManagedObjectContext: self.managedObjectContext!)
        
        nigel?.clubHandicap = NSNumber(double: 11.7)
        nigel?.winnings = NSNumber(integer: 0)
        nigel?.currentScore = 0
        
        print("Nigel inserted")
        
        
        let andrew: Golfer? = Golfer.golferWithFirstName("Andrew", andSurname: "Mogridge", playerIdentifier: "Player K", inManagedObjectContext: self.managedObjectContext!)
        
        andrew?.clubHandicap = NSNumber(double: 8.0)
        andrew?.winnings = NSNumber(integer: 0)
        andrew?.currentScore = 0
        
        print("Mogsy inserted")
        
        
        let liam: Golfer? = Golfer.golferWithFirstName("Liam", andSurname: "Rees", playerIdentifier: "Player L", inManagedObjectContext: self.managedObjectContext!)
        
        liam?.clubHandicap = NSNumber(double: 21.0)
        liam?.winnings = NSNumber(integer: 0)
        liam?.currentScore = 0
        
        print("Liam inserted")
        
        
        let jimmy: Golfer? = Golfer.golferWithFirstName("Jimmy", andSurname: "Sweeney", playerIdentifier: "Player M", inManagedObjectContext: self.managedObjectContext!)
        
        jimmy?.clubHandicap = NSNumber(double: 17.9)
        jimmy?.winnings = NSNumber(integer: 0)
        jimmy?.currentScore = 0
        
        print("Jimmy inserted")
        
        
        let john: Golfer? = Golfer.golferWithFirstName("John", andSurname: "Sweeney", playerIdentifier: "Player N", inManagedObjectContext: self.managedObjectContext!)
        
        john?.clubHandicap = NSNumber(double: 15.2)
        john?.winnings = NSNumber(integer: 0)
        john?.currentScore = 0
        
        print("John inserted")
        
        
        let david = Golfer.golferWithFirstName("David", andSurname: "Wilson", playerIdentifier: "Player O", inManagedObjectContext: self.managedObjectContext!)
        
        david.clubHandicap = NSNumber(double: 11.7)
        david.winnings = NSNumber(integer: 0)
        david.currentScore = 0
        
        print("Jock inserted")
        
        
        let craig = Golfer.golferWithFirstName("Craig", andSurname: "Wilson", playerIdentifier: "Player P", inManagedObjectContext: self.managedObjectContext!)
        
        craig.clubHandicap = NSNumber(double: 24.5)
        craig.winnings = NSNumber(integer: 0)
        craig.currentScore = 0
        
        print("Craig inserted")
        
        
        let entrants = [keith!,alan!,bernie!,graham!,mick!,gary!,mario!,joe!,jeff!,nigel!,andrew!,liam!,jimmy!,john!,david,craig]
        
        
        
        
        return entrants
    }

    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            if let label = self.detailDescriptionLabel {
                label.text = detail.valueForKey("timeStamp")!.description
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
            }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
        
        
        self.detailViewTitleBar.title = self.dayRound?.course
        
        
       
        

        
//        let tagView16 = self.view.viewWithTag(9) as! UIButton
//        tagView16.setTitle("Keith Bamford", forState: .Normal)
//        tagView16.setTitle("Brilliant", forState: .Highlighted)
        
//        print("TAGVIEW \(tagView16)")
        
        let players = ["Keith Bamford", "Alan Bromley", "Bernard Bull", "Graham Clarke", "Mick Clarke", "Gary Davies", "Mario De Abreu", "Graham Hill", "Jeff Mabbitt", "Nigel Maqueline","Andrew Mogridge", "Liam Rees", "Jimmy Sweeney", "John Sweeney","David Wilson", "Craig Wilson"]
        
        
//        for (var i = 1; i <= self.entrants.count; i++) {
//            let tagView = self.view.viewWithTag(i) as! UIButton
//            tagView.setTitle(players[i-1], forState: .Normal)
//            tagView.titleLabel?.font = UIFont(name: "GeezaPro-Bold", size: CGFloat(22))
//        }
        
        
        
        for (index, entrant) in self.entrants.enumerate() {
            
            let tagView = self.view.viewWithTag(index+1) as! UIButton
            tagView.setTitle(entrant.name, forState: .Normal)
            tagView.titleLabel?.font = UIFont(name: "GeezaPro-Bold", size: CGFloat(22))
            
//            print(entrant.name)
            entrant.currentTourHandicap = entrant.clubHandicap
            
        }
        
        
    }
    
    let day2PlayingOrder = ["A","F","O","L","E","J","C","P","I","N","G","D","M","B","K","H"]
    let day3PlayingOrder = ["A","J","G","H","E","N","K","L"]



    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playerAClicked(sender: UIButton) {
        
        switch (sender.tag) {
        case 1:
            sender.setTitle("Keith Bamford", forState: .Normal)
        case 2:
            sender.setTitle("Alan Bromley", forState: .Normal)
        case 3:
            sender.setTitle("Bernard Bull", forState: .Normal)
        case 4:
            sender.setTitle("Mick Clarke", forState: .Normal)
            
        default:
            break;
        }
        
        //        sender.setTitle("Keith Bamford", forState: .Normal)
        print("Button Clicked")
    }

}

