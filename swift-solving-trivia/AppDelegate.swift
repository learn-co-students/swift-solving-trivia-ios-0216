//
//  AppDelegate.swift
//  swift-solving-trivia
//
//  Created by Joel Bell on 7/8/16.
//  Copyright © 2016 Joel Bell. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func solveTrivia(_ trivia: [String : String]) -> String {
        for (state, capital) in trivia {
            let lowerCaseStateCharacters = Array(state.lowercased().characters)
            let lowerCaseCapitalCharacters = Array(capital.lowercased().characters)
            var noMatches = true
            
            for character in lowerCaseCapitalCharacters {
                if lowerCaseStateCharacters.contains(character) {
                    noMatches = false
                    break
                }
            }
            
            if noMatches == true {
                return state
            }
        }
        return "There is no such state"
    }
}
