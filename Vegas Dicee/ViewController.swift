//
//  ViewController.swift
//  Vegas Dicee
//
//  Created by Evgeniy Uskov on 29/05/2019.
//  Copyright © 2019 Evgeniy Uskov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftDiceImageView: UIImageView!
    @IBOutlet weak var rightDiceImageView: UIImageView!
    
    var diceIndexLeft: Int = 0
    var diceIndexRight: Int = 0
    
    let diceArray:[String] = [
        "dice1",
        "dice2",
        "dice3",
        "dice4",
        "dice5",
        "dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDice(view: leftDiceImageView)
        updateDice(view: rightDiceImageView)
    }

    @IBAction func rollButtonPressed(_ sender: Any) {
        updateDice(view: leftDiceImageView)
        updateDice(view: rightDiceImageView)
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDice(view: leftDiceImageView)
        updateDice(view: rightDiceImageView) 
    }
    
    func updateDice (view: UIImageView) {
        let index = Int.random(in: 0...5)
        view.image = UIImage(named: diceArray[index])
    }
    
}

