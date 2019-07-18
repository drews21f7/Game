//
//  GameBoardViewController.swift
//  Game
//
//  Created by Leah Cluff on 7/17/19.
//  Copyright © 2019 Drew Seeholzer. All rights reserved.
//

import UIKit

class GameBoardViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet var buttons: [UIButton]!
    
    var count = 1
    var activePlayer = 1
    var gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    var gameIsActive = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonTapped(_ sender: AnyObject) {
//        if (gameState[sender.tag-1] == 0 && gameIsActive == true) {
//            gameState[sender.tag-1] = activePlayer
//            if (activePlayer == 1) {
//                sender.setImage(UIImage(named:"X"), for: UIControl.State()) {
//                    activePlayer = 2
//                } else {
//                    sender.setImage(UIImage(named: "O"), for: UIControl.State) {
//                        activePlayer = 1
//                    }
//                }
//
//            }
//
//        }
    }
    
    
    @IBAction func playAgainButtonTapped(_ sender: Any) {
        //Hopefully this works! I have no idea what is happening!!!! AAAHHH!!!!
        
    }
    
    
}


