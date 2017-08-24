//
//  IngredientsVC.swift
//  DinnerApp
//
//  Created by Mel and Sand on 2017-04-26.
//  Copyright © 2017 Moshi Media. All rights reserved.
//

import UIKit
import GameKit

class IngredientsVC: UIViewController {
    
    
    @IBOutlet weak var vegetablesBtn: IngredientsButton!
    @IBOutlet weak var legumesBtn: IngredientsButton!
    @IBOutlet weak var fishBtn: IngredientsButton!
    @IBOutlet weak var beefBtn: IngredientsButton!
    @IBOutlet weak var porkBtn: IngredientsButton!
    @IBOutlet weak var chickenBtn: IngredientsButton!
    @IBOutlet weak var pastaBtn: IngredientsButton!
    
    @IBOutlet weak var continueBtn: UIButton!

    @IBOutlet weak var resetBtn: UIButton!
    
    var vegetablesBtnSelected = false
    var legumesBtnSelected = false
    var fishBtnSelected = false
    var beefBtnSelected = false
    var porkBtnSelected = false
    var chickenBtnSelected = false
    var pastaBtnSelected = false
        //For Coloring Purposes ^
    
    
//    let entreeProvider = EntreeProvider() //need to create instance
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func vegetablesPressed(_ sender: Any) {
       btnPressAction(vegetablesBtnSelected, ingredientBtn: vegetablesBtn, ingredient: "Vegetables")
        
        vegetablesBtnSelected = true
        
        resetBtn.isHidden = false
        continueBtn.isHidden = false
    }
    
    @IBAction func legumesPressed(_ sender: Any) {
        btnPressAction(legumesBtnSelected, ingredientBtn: legumesBtn, ingredient: "Lentils")
        
        legumesBtnSelected = true
        
        resetBtn.isHidden = false
        continueBtn.isHidden = false
    }
    
    @IBAction func fishPressed(_ sender: Any) {
        btnPressAction(fishBtnSelected, ingredientBtn: fishBtn, ingredient: "Fish")
        
        fishBtnSelected = true
        
        resetBtn.isHidden = false
        continueBtn.isHidden = false
    }
    
    @IBAction func beefPressed(_ sender: Any) {
        btnPressAction(beefBtnSelected, ingredientBtn: beefBtn, ingredient: "Beef")
        
        beefBtnSelected = true
        
        resetBtn.isHidden = false
        continueBtn.isHidden = false
    }
    
    
    @IBAction func porkSelected(_ sender: Any) {
        btnPressAction(porkBtnSelected, ingredientBtn: porkBtn, ingredient: "Pork")
        
        porkBtnSelected = true
        
        resetBtn.isHidden = false
        continueBtn.isHidden = false
    }
    
    @IBAction func chickenSelected(_ sender: Any) {
        btnPressAction(chickenBtnSelected, ingredientBtn: chickenBtn, ingredient: "Chicken")
        
        chickenBtnSelected = true
        
        resetBtn.isHidden = false
        continueBtn.isHidden = false
        
    }
    
    @IBAction func pastaSelected(_ sender: Any) {
        btnPressAction(pastaBtnSelected, ingredientBtn: pastaBtn, ingredient: "Pasta")
        
        pastaBtnSelected = true
        
        resetBtn.isHidden = false
        continueBtn.isHidden = false
    }
    
    
    @IBAction func resetBtnPressed(_ sender: Any) {
        
        entree = []
        
        colorReset(button: vegetablesBtn)
        colorReset(button: porkBtn)
        colorReset(button: legumesBtn)
        colorReset(button: chickenBtn)
        colorReset(button: beefBtn)
        colorReset(button: fishBtn)
        colorReset(button: legumesBtn)
        colorReset(button: pastaBtn)
        
        vegetablesBtnSelected = false
        legumesBtnSelected = false
        fishBtnSelected = false
        beefBtnSelected = false
        porkBtnSelected = false
        chickenBtnSelected = false
        pastaBtnSelected = false
        
        continueBtn.isHidden = true
    }
    
}



func btnPressAction (_ ingredientBtnStatus: Bool, ingredientBtn: IngredientsButton, ingredient: String) {
    
    if ingredientBtnStatus == false {
        ingredientBtn.backgroundColor = UIColor.white
        ingredientBtn.tintColor = UIColor(red: 106/255, green: 194/255, blue: 196/255, alpha: 1.0)
        
        addFood(food: ingredient)
        
    } else {
        
    }
    
    // when you press the button:
    //if the button hasn't been pressed yet, turn the background white and run function "addFood"
    //if the button has been pressed, do nothing
 
}



func addFood(food: String) {
    
    let path = Bundle.main.path(forResource: "entrees", ofType: "csv")!
    
    do {
        
        let csv = try CSV(contentsOfURL: path)
        let rows = csv.rows
        
        for row in rows {
            let name = row["Name"]!
            let type = row["Type"]!
            let link = row["Link"]!
            let icon1 = row["Icon1"]!
            let icon2 = row["Icon2"]!
            
            if type == food {
                let entreeInfo = Entree(name: name, link: link, type: type, icon1: icon1, icon2: icon2)
                entree.append(entreeInfo)
            }
            
        }
        
    } catch let err as NSError {
        print(err.debugDescription)
    }
    
    // Parse through the CSV
    //If the 'type' is equal to the food put into the function as a parameter, then assign the name, type, and link as an Entree (class)
        //then, add each Entree to the array called "entree"
    
}



func colorReset (button: IngredientsButton) {
    
     button.backgroundColor = UIColor(red: 106/255, green: 194/255, blue: 196/255, alpha: 1.0)
    
    button.tintColor = UIColor.white
    
}










