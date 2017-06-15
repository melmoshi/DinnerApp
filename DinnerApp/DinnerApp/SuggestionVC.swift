//
//  SuggestionVC.swift
//  DinnerApp
//
//  Created by Mel and Sand on 2017-05-10.
//  Copyright © 2017 Moshi Media. All rights reserved.
//

import UIKit
import GameKit

class SuggestionVC: UIViewController {
    
    @IBOutlet weak var entreeLbl: UILabel!
    

    @IBOutlet weak var settledLbl: UILabel!
    @IBOutlet weak var seeRecipeBtn: RoundButton!
    @IBOutlet weak var tryAgainBtn: RoundButton!
    
    //let provider = NumberProvider() //create instance
    
    
   var number = randomNum()



    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        

        entreeLbl.text = entree[number].name
    }
    
    @IBAction func seeRecipePressed(_ sender: Any) {
        
        
      if let url = NSURL(string: "\(entree[number].link)") {
           UIApplication.shared.openURL(url as URL)
        }
        
    }
    

    
    @IBAction func tryAgainPressed(_ sender: Any) {
        
        entree.remove(at: number)
            //removes current Entree from array
        
        number = randomNum()
            //assigns new random number
    
        if entree.count > 0 {
            
            entreeLbl.text = entree[number].name
            
        } else {
            
            entreeLbl.text = "That's All. \n Try Adding More Ingredients."
            settledLbl.text = "Sorry!"
            number = 0
            entree.append(Entree(name: "safety", link: "safety", type: "safety"))
                //this Entree item is added to the array only so that there is something to be removed if the user presses "Hmm.. Try Again" button again.
            
        }
        
        }
    
    
    
    @IBAction func backToIngredientsPressed(_ sender: Any) {
        
        entree = []
    }
    


}


    func randomNum() -> Int {
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: entree.count)
        
        return randomNumber
        
        //Creates a random number to call from entree array
    }

