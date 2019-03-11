//
//  ViewController.swift
//  Hello-World
//
//  Created by Raj Pandya on 2017-12-19.
//  Copyright © 2017 Raj Pandya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var mybutton: UIButton!
    @IBOutlet weak var goBackButton: UIButton!
    @IBOutlet weak var members: UITextView!
    @IBOutlet weak var titleImg: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func welcomePressed(_ sender: Any) {
        background.isHidden = false
        titleImg.isHidden = false
        goBackButton.isHidden = false
        mybutton.isHidden = true
    }

    @IBAction func onTitleClick(_ sender: Any) {
        members.isHidden = false
    }
    
    @IBAction func screenPressed(_ sender: Any) {
        background.isHidden = true
        titleImg.isHidden = true
        mybutton.isHidden = false
        goBackButton.isHidden = true
        members.isHidden = true
    }
}

