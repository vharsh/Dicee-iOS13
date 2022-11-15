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
    var leftIndex = 0;
    var rightIndex = 0;
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
        let images = ["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix"]
        // random
        leftDice = UIImage(imageLiteralResourceName: images[leftIndex])
        rightDice = UIImage(imageLiteralResourceName: images[rightIndex])
        if leftIndex < 6 && rightIndex < 6 {
            leftIndex++
            rightIndex++
        }
    }
}

