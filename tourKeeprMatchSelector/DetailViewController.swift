//
//  DetailViewController.swift
//  tourKeeprMatchSelector
//
//  Created by Keith Bamford on 18/01/2016.
//  Copyright © 2016 AKA Consultants. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!


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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

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

