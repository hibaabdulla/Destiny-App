//
//  StoryBrain.swift
//  Destiny App
//
//  Created by Hiba Abdulla on 5/17/25.
//

import Foundation

struct StoryBrain {
    
    let stories = [["You see a fork in the road.", "Take a left.", "Take a right."],
                   ["You see a tiger", "Shout for help","Play Dead"],
                   ["You find a treasure chest", "Open it", "Check for traps"]
                    ]
    var storyNumber = 0
    
    mutating func nextStory(userChoice: String) -> Int {
        
        if userChoice == stories[storyNumber][1] && storyNumber < stories.count - 1 {
            storyNumber += 1
        }
        
        else if userChoice == stories[storyNumber][2] && storyNumber < stories.count - 2 {
            storyNumber += 2
        }
        
        else {
            storyNumber = 0
        }
        
        return storyNumber
    }
}
