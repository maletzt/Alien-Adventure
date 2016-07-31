//
//  MostCommonCharacter.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func mostCommonCharacter(inventory: [UDItem]) -> Character? {
        var counters = [Character:Int]()
        var theCharacter : Character? = nil
        var theCount = 0
        
        for item in inventory {
            for c in item.name.characters {
                if counters[c] == nil {
                    counters[c] = 1
                } else {
                    counters[c]! += 1
                }
                if counters[c]! > theCount {
                    theCount = counters[c]!
                    theCharacter = c
                }
            }
        }
        return theCharacter
    }
}
