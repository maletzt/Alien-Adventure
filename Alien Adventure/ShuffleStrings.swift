//
//  ShuffleStrings.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func shuffleStrings(s1 s1: String, s2: String, shuffle: String) -> Bool {
        var indexA = s1.startIndex
        var indexB = s2.startIndex
        for character in shuffle.characters {
            if indexA < s1.endIndex && character == s1[indexA] {
                indexA = indexA.successor()
            } else if indexB < s2.endIndex && character == s2[indexB] {
                indexB = indexB.successor()
            } else {
                return false
            }
        }
        return true
    }
}
