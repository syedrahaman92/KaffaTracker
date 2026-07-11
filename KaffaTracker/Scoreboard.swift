//
//  Scoreboard.swift
//  KaffaTracker
//
//  Created by Syed Rahaman on 21/06/26.
//

import Foundation

struct Scoreboard {
    var players: [Player] = [
        Player(name: "Elisha", score: 0),
        Player(name: "Andre", score: 0),
        Player(name: "Jasmine", score: 0),
    ]
    
    var state = GameState.setup
    
    mutating func reserScores(to newValue: Int) {
        
    }
}
