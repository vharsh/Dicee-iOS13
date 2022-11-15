//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rightDice: UIImageView!
    @IBOutlet weak var leftDice: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // NOTES: we get the WHO and now using the object of it we can decide WHAT to do with that object
        // typical OOP :)
        // this can be changed via Attribute inspector too!
        leftDice.alpha = 0.5
        // TODO: Change on Roll button click
        leftDice.image = UIImage(imageLiteralResourceName: "DiceSix")
        rightDice.image = UIImage(imageLiteralResourceName: "DiceTwo")
    }

    @IBAction func rollButton(_ sender: UIButton) {
        leftDice = UIImage(imageLiteralResourceName: "DiceFour")
        rightDice = UIImage(imageLiteralResourceName: "DiceFour")
    }
}

