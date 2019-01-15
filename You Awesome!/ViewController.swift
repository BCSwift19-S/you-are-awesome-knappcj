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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func Button(_ sender: UIButton) {
    messageLabel.text = "You are Awesome!!"
    }
    
}

