//
//  Entree.swift
//  DinnerApp
//
//  Created by Mel and Sand on 2017-06-09.
//  Copyright © 2017 Moshi Media. All rights reserved.
//

import Foundation

class Entree {
    
    fileprivate var _name: String!
    fileprivate var _link: String!
    fileprivate var _type: String!
    fileprivate var _icon1: String!
    fileprivate var _icon2: String!
    
    var name: String {
        return _name
    }
    
    var link: String {
        return _link
    }
    
    var type: String {
        return _type
    }
    
    var icon1: String {
        return _icon1
    }
    
    var icon2: String {
        return _icon2
    }
    
    
    init(name: String, link: String, type: String, icon1: String, icon2: String) {
        self._name = name
        self._link = link
        self._type = type
        self._icon1 = icon1
        self._icon2 = icon2
    }
    
}

var entree = [Entree]()



























