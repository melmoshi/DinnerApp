//
//  RoundedCornerButton.swift
//  DinnerApp
//
//  Created by Mel and Sand on 2017-05-10.
//  Copyright © 2017 Moshi Media. All rights reserved.
//

import UIKit

class IngredientsButton: UIButton {

    override func awakeFromNib() {
        layer.cornerRadius = 20
        layer.borderWidth = 2
        layer.borderColor = UIColor.white.cgColor
        backgroundColor = UIColor(red: 106/255, green: 194/255, blue: 196/255, alpha: 1.0)
        contentEdgeInsets = UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 16)
    }


}

class ResetButton: UIButton {
    
    override func awakeFromNib() {
        layer.cornerRadius = 15
        layer.borderWidth = 1
        layer.borderColor = UIColor.white.cgColor
        backgroundColor = UIColor(red: 106/255, green: 194/255, blue: 196/255, alpha: 1.0)
        contentEdgeInsets = UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 16)
    }
    
    
}
