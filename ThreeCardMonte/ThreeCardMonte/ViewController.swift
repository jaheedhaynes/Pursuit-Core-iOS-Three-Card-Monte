//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Card1: UIButton!
    @IBOutlet weak var Card2: UIButton!
    @IBOutlet weak var Card3: UIButton!
    
    
    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var displayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
//---------------------------------------
    
    let card = [0,1,2]
    
    
    @IBAction func cardIndex1(_ sender: UIButton) {
        
        switch sender.tag {
        case 0:
            let randomCard = card.randomElement()
            if randomCard == 1 {
                Card1.setBackgroundImage(#imageLiteral(resourceName: "kingCard.jpg"), for: .normal)
                mainLabel.text = "You Win"
                
            } else {
                Card1.setBackgroundImage(#imageLiteral(resourceName: "threeCard.png"), for: .normal)
                mainLabel.text = "You Lose"
            }
        case 1:
            let randomCard = card.randomElement()
            if randomCard == 1 {
                Card2.setBackgroundImage(#imageLiteral(resourceName: "kingCard.jpg"), for: .normal)
                mainLabel.text = "You Win"
            } else {
                Card2.setBackgroundImage(#imageLiteral(resourceName: "threeCard.png"), for: .normal)
                mainLabel.text = "You Lose"
            }
        case 2:
            let randomCard = card.randomElement()
            if randomCard == 1 {
                Card3.setBackgroundImage(#imageLiteral(resourceName: "kingCard.jpg"), for: .normal)
                mainLabel.text = "You Win"
            } else {
                Card3.setBackgroundImage(#imageLiteral(resourceName: "threeCard.png"), for: .normal)
                mainLabel.text = "You Lose"
            }
            
        default:
            break
        }
    }
    
//---------------------------------------
    
    @IBAction func newGame(_ sender: UIButton) {
        mainLabel.text = "3 Card Montie"
        Card1.setBackgroundImage(#imageLiteral(resourceName: "cardBackRed.png"), for: .normal)
        Card2.setBackgroundImage(#imageLiteral(resourceName: "cardBackRed.png"), for: .normal)
        Card3.setBackgroundImage(#imageLiteral(resourceName: "cardBackRed.png"), for: .normal)
    }
}


