//
//  RarityOfItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func rarityOfItems(inventory: [UDItem]) -> [UDItemRarity:Int] {
        var result = [UDItemRarity:Int]()
        for var rarity = UDItemRarity.Common.rawValue; rarity <= UDItemRarity.Legendary.rawValue; rarity += 1 {
            result[UDItemRarity(rawValue: rarity)!] = inventory.filter({ $0.rarity == UDItemRarity(rawValue: rarity)}).count
        }
        return result
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 4"