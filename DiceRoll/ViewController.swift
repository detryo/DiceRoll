//
//  ViewController.swift
//  DiceRoll
//
//  Created by Cristian Sedano Arenas on 27/08/2019.
//  Copyright © 2019 Cristian Sedano Arenas. All rights reserved.
//

import UIKit
import GameplayKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelRollOne: UILabel!
    @IBOutlet weak var buttonRoll: UIButton!
    @IBOutlet weak var textFieldNumber: UITextField!
    var score:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // Roll Button
    @IBAction func buttonRoll(_ sender: UIButton) {
        labelNumber()
    }
    // func roll dice
    func rollDice() {
        let rollOne = Int.random(in: 1...6)
        
        labelRollOne.text = "\(rollOne)"
    }
    
    func labelNumber() {
        var num: Int? = Int(textFieldNumber.text!)
        var rollOne = Int.random(in: 1...num!)
        
        labelRollOne.text = "\(rollOne)"
    }
}

