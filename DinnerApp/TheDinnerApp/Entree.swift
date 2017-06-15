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
    
    var name: String {
        return _name
    }
    
    var link: String {
        return _link
    }
    
    var type: String {
        return _type
    }
    
    
    init(name: String, link: String, type: String) {
        self._name = name
        self._link = link
        self._type = type
    }
    
}

var entree = [Entree]()



























