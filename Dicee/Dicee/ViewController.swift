//
//  ViewController.swift
//  Dicee
//
//  Created by Pawan Dhull on 02/04/20.
//  Copyright © 2020 Pawan Dhull. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    @IBOutlet var Dice1: UIImageView!
    @IBOutlet var dice2: UIImageView!
    let diceArray = ["dice1","dice2","dice3","dice4","dice4","dice5","dice6"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func RollButton(_ sender: Any) {
        
        self.randomDiceIndex1 = Int(arc4random_uniform(6))
        self.randomDiceIndex2 = Int(arc4random_uniform(6))
        print(self.randomDiceIndex2)
   /*
         OLD CODE FOR CHANGING THE IMAGE OF THE DICE USING SWITCH STATEMENT.
        switch randomDiceIndex1 {
        case 0:
            self.Dice1.image = UIImage(named: "dice1")
            break
        case 1:
            self.Dice1.image = UIImage(named: "dice2")
            break
            
        case 2:
            self.Dice1.image = UIImage(named: "dice3")
            break
            
        case 3:
            self.Dice1.image = UIImage(named: "dice4")
            break
        case 4:
            self.Dice1.image = UIImage(named: "dice4")
            break
            
        case 5:
            self.Dice1.image = UIImage(named: "dice4")
            break
            
        default:
            break
        }
        switch randomDiceIndex2 {
        case 0:
            self.dice2.image = UIImage(named: "dice1")
            break
        case 1:
            self.dice2.image = UIImage(named: "dice2")
            break
            
        case 2:
            self.dice2.image = UIImage(named: "dice3")
            break
            
        case 3:
            self.dice2.image = UIImage(named: "dice4")
            break
        case 4:
            self.dice2.image = UIImage(named: "dice4")
            break
            
        case 5:
            self.dice2.image = UIImage(named: "dice4")
            break
            
        default:
            break
        }
 */
        // NEW CODE TO CHANGE DICE IMAGE USING ARRAY.
        self.Dice1.image = UIImage(named: diceArray[randomDiceIndex1])
        self.dice2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
}


