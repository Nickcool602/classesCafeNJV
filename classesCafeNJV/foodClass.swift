//
//  foodClass.swift
//  classesCafeNJV
//
//  Created by NICHOLAS VINTARTAS on 3/5/25.
//

import Foundation

public class foodClass {
    var name : String
    var price : Double
    var calories : Int
    var images : String
    init(name: String, price: Double, calories: Int, images: String) {
        self.name = name
        self.price = price
        self.calories = calories
        self.images = images
    }
}
