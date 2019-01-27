//
//  ViewController.swift
//  You Awesome!
//
//  Created by Christopher Knapp on 1/9/19.
//  Copyright © 2019 Christopher Knapp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    @IBOutlet weak var messageLabel: UILabel!
     var index = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func Button(_ sender: UIButton) {
        
        let messages = ["You are Awesome!",
                        "You are great!",
                        "You are Fantastic!",
                        "When the Genius bar needs help, they call you",
                        "You brighten my day","You are da bomb",
                        "Hey fabulous","You are tremendous",
                        "Youve got the design skills of Johnny Ive",
                        "I can't wait to download you app!"]
        
        messageLabel.text = messages.randomElement()
        
        
     }
    }
    


