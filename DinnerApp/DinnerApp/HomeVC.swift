//
//  HomeVC.swift
//  DinnerApp
//
//  Created by Mel and Sand on 2017-04-22.
//  Copyright © 2017 Moshi Media. All rights reserved.
//

import UIKit
import GoogleMobileAds

class HomeVC: UIViewController, GADBannerViewDelegate {
    
    
    @IBOutlet weak var LetsEat: UIButton!
    
    @IBOutlet weak var bannerAd: GADBannerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //BANNER AD:
        // Request
        let requestBanner = GADRequest()
        //requestBanner.testDevices = [kGADSimulatorID]
            //^COMMENT OUT FOR PUBLISHING (?)
        
        //Set Up Ad
        bannerAd.adUnitID = "ca-app-pub-8878911622308650/9665175929"
        
        //Making view controller responsible for ad unit
        bannerAd.rootViewController = self
        bannerAd.delegate = self
        
        bannerAd.load(requestBanner)
        //
        
        
        
    }
    
    override func awakeFromNib() {
         
    }

    @IBAction func letsEatPressed(_ sender: Any) {
        
        //none

    }


}

