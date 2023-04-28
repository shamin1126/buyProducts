//
//  Constant.swift
//  BuyProducts
//
//  Created by BJIT on 15/9/22.
//

import SwiftUI

//Data
let players: [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")
let products: [Products] = Bundle.main.decode("product.json")
let brands: [Brands] = Bundle.main.decode("brand.json")
let sampleProduct: Products = products[0]

//Color
let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray)

//Layout
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
//Computed property: Must use 'var' for computed property
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

//UX
let feedback = UIImpactFeedbackGenerator(style: .medium)

//API




