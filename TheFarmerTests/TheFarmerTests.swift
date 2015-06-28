//
//  TheFarmerTests.swift
//  TheFarmerTests
//
//  Created by BJ on 6/27/15.
//  Copyright © 2015 Six Five Software, LLC. All rights reserved.
//

import XCTest

@testable import TheFarmer

class TheFarmerTests: XCTestCase {

    func testFarmerCanStoreBeans() {
        let stinkyThumbsArbuckle = Farmer()
        XCTAssertEqual(stinkyThumbsArbuckle.beanCount, 0, "Stinky should start with 0 beans.")
    }
    
    func testAddingBeansIncreasesFarmersStore() {
        // given
        var stinky = Farmer()
        
        // when
        stinky.addBeans(50)
        
        // then
        XCTAssertEqual(stinky.beanCount, 50)
    }
    
    func testAddingTwoSetsOfBeansIncreasesFarmersStore() {
        // given 
        var stinky = Farmer()
        
        // when
        stinky.addBeans(50)
        stinky.addBeans(100)
        
        // then
        XCTAssertEqual(stinky.beanCount, 150)
    }
    
    func testStinkyFeedingBeansToGoatsReducesBeanCoun() {
        // given
        var stinky = Farmer()
        
        // when
        stinky.addBeans(150)
        stinky.feedGoats(50)
        
        // then
        XCTAssertEqual(stinky.beanCount, 100)
    }
}
