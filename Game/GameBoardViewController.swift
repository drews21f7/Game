//
//  GameBoardViewController.swift
//  Game
//
//  Created by Leah Cluff on 7/17/19.
//  Copyright © 2019 Drew Seeholzer. All rights reserved.
//

import UIKit
import QuartzCore
import SAConfettiView

class GameBoardViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet var buttons: [UIButton]!
    @IBOutlet weak var winLabel: UILabel!
    
    var count = 1
    var activePlayer = 1
    var gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    var gameIsActive = 1
    let winningCombinations: [[Int]] = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        winLabel.text = ""
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonTapped(_ sender: AnyObject) {
        if gameState[sender.tag-1] == 0 && gameIsActive == 1 {
            gameState[sender.tag-1] = activePlayer
            if (activePlayer == 1) {
                let crossImage = UIImage(named: "X")
                sender.setImage(crossImage, for: .normal)
                activePlayer = 2
                print (gameState)
            }  else {
                    let circleImage = UIImage(named: "O")
                    sender.setImage(circleImage, for: .normal)
                    self.activePlayer = 1
                    print (gameState)
                }
        }
        // Checks gameState array to see if a player has met a winning combination
        for combination in winningCombinations {
            if gameState[combination[0]] != 0 && gameState[combination[0]] == gameState[combination[1]] && gameState[combination[1]] == gameState[combination[2]] {
                gameIsActive = 2
                
                if gameState[combination[0]] == 1 {
                    gameState = [1, 1, 1, 1, 1, 1, 1, 1, 1,]
                    print ("Cross wins")
                    winLabel.text = "CROSS WINS!"
  
                    
                    
                } else {
                    gameState = [2, 2, 2, 2, 2, 2, 2, 2, 2]
                    winLabel.text = "CIRCLE WINS!"
                    print ("Circle wins")
                    SAConfettiView.initialize()

                    winLabel.setNeedsDisplay()

                }
            } else if gameIsActive == 1 {
                for state in gameState {
                    if state != 0 {
                        gameIsActive = 3
                        print (gameIsActive)
                    } else if state == 0 {
                        gameIsActive = 1
                        print (gameIsActive)
                        break
                    }
                }
            }
        }
        
        if gameIsActive == 3 {
            print ("Draw")
            winLabel.text = "DRAW"
            winLabel.setNeedsDisplay()
        }
    }
    
    
    @IBAction func playAgainButtonTapped(_ sender: Any) {
        gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0]
        activePlayer = 1
        gameIsActive = 1
        winLabel.text = ""
        
        // Resets button images back to nil
        for tag in 1...9 {
            let button = view.viewWithTag(tag) as! UIButton
            button.setImage(nil, for: .normal)
        }
    }
}


