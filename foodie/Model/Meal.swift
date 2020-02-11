//
//  Meal.swift
//  foodie
//
//  Created by Tony Egwu on 10/02/2020.
//  Copyright © 2020 Tony Égwu. All rights reserved.
//

import Foundation

struct Meal {
    var mealId:Int
    var mealName:String!
    var mealPrice:Double!
    var category:MealCategory!
    var deliveryTime:String
    var image:String
    
}

struct MealCategory {
    var categoryId:Int
    var categoryName:String!
    
}

struct Vendor {
    var vendorId:Int
    var vendorName:String
    var address:String
}
