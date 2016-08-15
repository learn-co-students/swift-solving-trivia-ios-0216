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
    
    func solveTrivia(statesCapitals: [String : String])-> String{
        
        var answer = ""
        
        for (states, capitals) in statesCapitals{
            
            let state = states.lowercaseString
            let capital = capitals.lowercaseString
            
            var counter = 0
            for letter in capital.characters{
                
                if state.characters.contains(letter){
                    
                    counter += 1
                }
                
            }
            
            if counter == 0 {
                answer = state
            }
        }
        
        return answer.capitalizedString
    }
    
}

