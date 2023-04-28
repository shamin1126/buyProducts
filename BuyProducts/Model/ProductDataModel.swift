//
//  ProductDataModel.swift
//  BuyProducts
//
//  Created by BJIT on 19/9/22.
//

import Foundation

struct Products: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color: [Double]

    //Computed Property
    var red: Double { return color[0] }
    var green: Double { return color[1] }
    var blue: Double { return color[2] }

    var formattedPrices: String { return "$\(price)"}
}
