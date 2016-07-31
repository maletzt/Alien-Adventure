//
//  PlanetData.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
import Foundation

extension Hero {
    
    func planetData(dataFile: String) -> String {
        let json = NSBundle.mainBundle().URLForResource(dataFile, withExtension: "json")!
        let rawJSON = NSData(contentsOfURL: json)!
        let rawData = try! NSJSONSerialization.JSONObjectWithData(rawJSON, options: NSJSONReadingOptions()) as! [NSDictionary]
        
        var score = 0
        var thePlanet = ""
        
        for planet in rawData {
            let newScore = (planet["CommonItemsDetected"] as! Int) + (planet["UncommonItemsDetected"] as! Int)*2 + (planet["RareItemsDetected"] as! Int)*3 + (planet["LegendaryItemsDetected"] as! Int)*4
            if score < newScore {
                score = newScore
                thePlanet = planet["Name"] as! String
            }
        }
        return thePlanet
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 7"