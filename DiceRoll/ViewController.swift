//
//  ViewController.swift
//  DiceRoll
//
//  Created by Hishara Dilshan on 2021-01-31.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imgDiceOne: UIImageView!
    @IBOutlet weak var imgDiceTwo: UIImageView!
    
    let diceFaces = [
        UIImage(systemName: "die.face.1.fill"),
        UIImage(systemName: "die.face.2.fill"),
        UIImage(systemName: "die.face.3.fill"),
        UIImage(systemName: "die.face.4.fill"),
        UIImage(systemName: "die.face.5.fill"),
        UIImage(systemName: "die.face.6.fill")]
        
    override func viewDidLoad() {
        super.viewDidLoad()
        flip()
    }

    @IBAction func btnRollClicked(_ sender: UIButton) {
        flip()
    }
    
    func flip() {
        imgDiceOne.image = diceFaces[Int.random(in: 0...5)]
        imgDiceTwo.image = diceFaces[Int.random(in: 0...5)]
    }
    
}

