//
//  KaffaTrackerTests.swift
//  KaffaTrackerTests
//
//  Created by Syed Rahaman on 14/07/26.
//

import Testing
@testable import KaffaTracker

struct KaffaTrackerTests {

    @Test("Reset player scores", arguments: [0, 10, 20])
    func resetScores(to newValue: Int) async throws {
        var scoreboard = Scoreboard(players: [
            Player(name: "Elisha", score: 0),
            Player(name: "Andre", score: 5)
        ])
        scoreboard.reserScores(to: newValue)
        
        for player in scoreboard.players {
            #expect(player.score == newValue)
        }

    }

}
