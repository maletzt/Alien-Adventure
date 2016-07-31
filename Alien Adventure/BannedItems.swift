//
//  BannedItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

extension Hero {
    
    func bannedItems(dataFile: String) -> [Int] {
        let plist = NSBundle.mainBundle().URLForResource(dataFile, withExtension: "plist")!
        let dataArray = NSArray(contentsOfURL: plist)!
        
        return dataArray.filter({
            let dict = $0 as! NSDictionary
            let name = dict["Name"] as! String
            return name.containsString("Laser")
        }).map({
            
            let item = $0 as! NSDictionary
            return item["ItemID"] as! Int
        })
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 6"