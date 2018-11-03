//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Paulo Orquilo on 27/10/18.
//  Copyright © 2018 Paulo Orquilo. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {

    //MARK: Meal Test Class
    // Confirm that the Meal initializer returns a Meal object when passed valid parameters.
    func testMealInitializationSucceeds(){
        // Zero rating
        let zeroRatingMeal = Meal.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        
        let highestRatingMeal = Meal.init(name: "Highest", photo: nil, rating: 5)
        XCTAssertNotNil(highestRatingMeal)
    }

    // Confirm that the Meal initialier returns nil when passed a negative rating or an empty name.
    func testMealInitializationFails(){
        //Negative rating
        let negativeRatingMeal = Meal.init(name: "Negative", photo: nil, rating: -1)
        XCTAssertNil(negativeRatingMeal)
        
        //empty rating
        let emptyStringRatingMeal = Meal.init(name: "", photo: nil, rating: 0)
        XCTAssertNil(emptyStringRatingMeal)
        
        //rating exceed maximum
        let largeRatingMeal = Meal.init(name: "Large", photo: nil, rating: 6)
        XCTAssertNil(largeRatingMeal)
    }
}
