//
//  Player.swift
//  KaffaTracker
//
//  Created by Syed Rahaman on 17/06/26.
//

import Foundation

struct Player: Identifiable {
    let id = UUID()
    
    var name: String
    var score: Int
}
