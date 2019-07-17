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
    
    var gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    var gameIsActive = true
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
//
//    @IBAction func buttonTapped(_ sender: Any) {
//
//    }
//
    
    
    
//    func presentSimpleAlert(title: String) {
//        let alertController = UIAlertAction(title: "Winner winner chicken Dinner", style: .default)
//        let dismissAction = UIAlertAction(title: "Dismiss", style: .cancel, handler: nil)
//
//    }


}


