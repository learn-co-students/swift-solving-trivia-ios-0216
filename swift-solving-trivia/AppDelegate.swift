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
    
    func solveTrivia(dictionary:[String:String]) -> String {
        
        var returnString : String = ""
        
//        for (state, capital) in dictionary
//        {
//            
//            var matchCount : Int = 0
//            print("\nCapital of \(state) is \(capital), it has \(capital.characters.count) letter in its name\n")
//            
//            var capitalCount : Int = capital.characters.count
//
//
//            for stateLetter in state.lowercaseString.characters
//            {
//                print("\(capitalCount) is the capitalCount\n")
//                
//                capitalCount -= 1
//                
//                for capitalLetter in capital.lowercaseString.characters
//                {
//                   
//                    print("Current state letter is: \(stateLetter), current capital letter is:\(capitalLetter)\n")
//                    
//                    if stateLetter == capitalLetter
//                    {
//                        matchCount += 1
//                        print("\(stateLetter) is equal to \(capitalLetter)")
//                        print("So far, match count is \(matchCount)")
//                        print("It has a match, \(state) is not the answer")
//                        
//                    }
//                    else if matchCount == 0 && capitalCount < 1
//                    {
//                        
//                        returnString = state
//                        
//                        print("matchCount is:\(matchCount) and capitalCount is:\(capitalCount)")
//                        print("\(state) wins!")
//                    }
//                    
//                }
//                
//            }
//            
//        }
//    
//        return returnString
   
        for (state, capital) in dictionary {
            
            var matchCount : Int = 0
            
            var capitalCount : Int = capital.characters.count
            
            for stateLetter in state.lowercaseString.characters {
                
                capitalCount -= 1
                    
                    if capital.containsString(String(stateLetter)) {
                        matchCount += 1
                        
                    }
                    else if matchCount == 0 && capitalCount < 1 {
                        returnString = state
                    }
                
            }
            
        }
        
        return returnString
    }

}

