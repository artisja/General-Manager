//
//  Player.swift
//  GeneralManager
//
//  Created by Justin Artis on 5/19/17.
//  Copyright © 2017 Justin Artis. All rights reserved.
//

import Foundation

class Player {
    
    var name : String
    var cost : Double
    var age  : Double
    var nationality : String
    
    init(pName : String,pCost : Double,pAge : Double,pNation : String) {
        self.name = pName
        self.cost = pCost
        self.age = pAge
        self.nationality = pNation
    }
    
    func getName() -> String {
        return self.name
    }
    
    func getCost() -> Double {
        return self.cost
    }
    
    func getAge() -> Double {
        return self.age
    }
    
    func getNationality() -> String {
        return self.nationality
    }
}
