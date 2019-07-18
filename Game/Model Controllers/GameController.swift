//
//  GameController.swift
//  Game
//
//  Created by Leah Cluff on 7/17/19.
//  Copyright © 2019 Drew Seeholzer. All rights reserved.
//

import Foundation

class GameController {
    
    var sharedInstance = GameController()
    
    var arrayOfGrids: [[String]] = [["", "", ""],
                                    ["", "", ""],
                                    ["", "", ""]]
    
    var isXTurn: Bool = true
    

}
