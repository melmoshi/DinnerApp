//
//  SuggestionVC.swift
//  DinnerApp
//
//  Created by Mel and Sand on 2017-05-10.
//  Copyright © 2017 Moshi Media. All rights reserved.
//

import UIKit
import GameKit
import GoogleMobileAds



class SuggestionVC: UIViewController {
    
    @IBOutlet weak var entreeLbl: UILabel!
    @IBOutlet weak var settledLbl: UILabel!
    @IBOutlet weak var seeRecipeBtn: RoundButton!
    @IBOutlet weak var tryAgainBtn: RoundButton!
    
    //let provider = NumberProvider() //create instance
    
    
    var number = randomNum()
    
    var numberTryAgainPressed = 1
        //counts the number of times "Try Again" btn has been pressed
    
    var interstitialAd: GADInterstitial!
    //Google Ads
    
    override func viewDidLoad() {
        super.viewDidLoad()

        entreeLbl.text = entree[number].name
        
        
        //SET-UP & CONFIGURE INTERSTITIAL AD:
        interstitialAd = GADInterstitial(adUnitID: "ca-app-pub-8878911622308650/9804776722")
        
        let requestInterstitial = GADRequest()
        requestInterstitial.testDevices = [kGADSimulatorID]
        
        interstitialAd.load(requestInterstitial)
        
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
        
        if (interstitialAd.isReady) {
            
            interstitialAd.present(fromRootViewController: self)
            
        }
    
        if entree.count > 0 { //If there are still Entrees in the array
            
            entreeLbl.text = entree[number].name
            interstitialAd = createAd()
            
            
            
            if numberTryAgainPressed > 2 {
                
                //none
            }
            
            
            
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
    
    
    func createAd () -> GADInterstitial {
        
        let InterstitialAd = GADInterstitial(adUnitID: "ca-app-pub-8878911622308650/9804776722")
        InterstitialAd.load(GADRequest())
        return InterstitialAd
        
    }
    

}


    func randomNum() -> Int {
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: entree.count)
        
        return randomNumber
        
        //Creates a random number to call from entree array
    }





