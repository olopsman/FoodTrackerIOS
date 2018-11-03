//
//  Meal.swift
//  FoodTracker
//
//  Created by Paulo Orquilo on 2/11/18.
//  Copyright © 2018 Paulo Orquilo. All rights reserved.
//

import UIKit

class Meal {
    //MARK: Properties
    var name: String
    var photo: UIImage?
    var rating: Int
    //MARK: Initialization
    
    init?(name: String, photo: UIImage?, rating: Int) {
        // name must not be empty
        guard !name.isEmpty else {
            return nil
        }
        // the rating must be between 0 and 5
        guard(rating >= 0) && (rating <= 5) else {
            return nil
        }
        
        // Initialize stored properties.
        self.name = name
        self.photo = photo
        self.rating = rating
    }
    
}
