//
//  CategoryModel.swift
//  BuyProducts
//
//  Created by BJIT on 19/9/22.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
