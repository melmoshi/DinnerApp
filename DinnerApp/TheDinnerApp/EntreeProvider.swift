//
//  EntreeProvider.swift
//  DinnerApp
//
//  Created by Mel and Sand on 2017-04-22.
//  Copyright © 2017 Moshi Media. All rights reserved.
//

import Foundation
import GameKit

struct EntreeProvider {
    
    let easyEntrees = ["Tomato Soup!",
                       "Grilled Cheese Sandwiches!",
                       "Rice and Beans!",
                       "Mr. Noodles!",
                       "Kraft Dinner!",
                       "Lentil Soup!",
                       "Eggs and Bacon!",
                       "Perogies!",
                       "French Toast!",
                       "Classic Spaghetti!",
                       "Chicken Noodle Soup!",
                       "Seasoned Rice with Peas and Corn!",]
    
    let hardEntrees = ["Beef and Broccoli!",
                       "Stir-fry!",
                       "Lemon Salmon!",
                       "Grilled Pork Kebabs!",
                       "Greek Pasta Salad!",
                       "Pad Thai!",
                       "Beet and Kale Salad!",
                       "Fish and Chips!",
                       "Seafood Chowder!",
                       "Roasted Chicken Dinner!",
                       "Roast Beef!",
                       "Spicy Chili!",
                       "Biryani!",
                       "Vegetarian Korma!"]
    
    let chickenEntrees = ["Chicken Wings",
                            "Chicken Thighs",
                            "Chicken Nuggets",
                            "Chicken Korma"]
    
    let beefEntrees = ["Steak",
                        "Beef Tenderloin",
                        "Pulled Beef",
                        "Hamburger"]
    
    
    
    func randomEasyEntree() -> String {
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: easyEntrees.count)
        
        return easyEntrees[randomNumber]
    }
    
    func randomHardEntree() -> String {
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: hardEntrees.count)
        
        return hardEntrees[randomNumber]
    }
    

    

    
}
