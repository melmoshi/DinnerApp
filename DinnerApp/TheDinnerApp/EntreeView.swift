//
//  EntreeView.swift
//  DinnerApp
//
//  Created by Mel and Sand on 2017-06-09.
//  Copyright © 2017 Moshi Media. All rights reserved.
//

import UIKit

class EntreeView: UIView {

    //want to update label and recipe
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var seeRecipe: UIButton!
    
    var recipeLink: String!

    var entree: Entree!
    
    func updateSuggestion(_ entree: Entree) {
        
        self.entree = entree
        
        nameLbl.text = self.entree.name.capitalized
        recipeLink = self.entree.link
        
    }

}
