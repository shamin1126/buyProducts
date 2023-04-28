//
//  BuyProductsApp.swift
//  BuyProducts
//
//  Created by BJIT on 15/9/22.
//

import SwiftUI

@main
struct BuyProductsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(shop())
        }
    }
}
