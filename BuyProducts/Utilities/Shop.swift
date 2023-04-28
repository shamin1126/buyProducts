//
//  Shop.swift
//  BuyProducts
//
//  Created by BJIT on 19/9/22.
//

import Foundation

class shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Products? = nil
}
