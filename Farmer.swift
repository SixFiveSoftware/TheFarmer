//
//  Farmer.swift
//  TheFarmer
//
//  Created by BJ on 6/27/15.
//  Copyright © 2015 Six Five Software, LLC. All rights reserved.
//

struct Farmer {
    var beanCount = 0
    var age = 0
    
    mutating func addBeans(beans: Int) {
        beanCount += beans
    }
    
    mutating func feedGoats(beans: Int) {
        beanCount -= beans
    }
    
    mutating func happyBirthday() {
        ++age
    }
}