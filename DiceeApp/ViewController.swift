//
//  ViewController.swift
//  DiceeApp
//
//  Created by Mac on 26/03/19.
//  Copyright © 2019 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var randomDeicIndexOne : Int = 0
    var randomDiceIndexTwo : Int = 0
    var diceImage = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    @IBOutlet weak var diceOne: UIImageView!
    @IBOutlet weak var diceTwo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        diceAction()
    }

    @IBAction func rollBTNClick(_ sender: Any) {
       diceAction()
    }
    
    func diceAction() {
        randomDeicIndexOne = Int.random(in: 0 ... 5)
        randomDiceIndexTwo = Int.random(in: 0 ... 5)
        
        diceOne.image = UIImage(named: diceImage[randomDeicIndexOne])
        diceTwo.image = UIImage(named: diceImage[randomDiceIndexTwo])
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        diceAction()
    }
    
    
    
}

