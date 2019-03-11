//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Raj Pandya on 2019-02-19.
//  Copyright © 2019 Raj Pandya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let possibleResults = ["Yes", "No", "Maybe", "Haha, you're funny", "Try again", "Never ever", "Possibly", "Probably not", "Of course!", "100%", "Stupid question"]
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet var askButton: UIButton!
    var randomNumber: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        resultLabel.text = ""
        self.askButton.layer.cornerRadius = 140
    }

    
    @IBAction func askButtonPressed(_ sender: Any) {
        randomNumber = Int.random(in: 0 ... 10)
        resultLabel.text = possibleResults[randomNumber]
    }

}

