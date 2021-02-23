//
//  RecipeModel.swift
//  Recipe App
//
//  Created by Adam Woods on 16/02/2021.
//

import Foundation

struct Pizza: Identifiable, Decodable {

    // The id property is for the Identifiable protocol which we need to display these instances in a SwiftUI List
    var id:UUID?
    
    // These properties map to the properties in the JSON file
    var name:String
    var toppings:[String]
    var image:String

}

