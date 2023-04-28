//
//  AddToCartDetailView.swift
//  BuyProducts
//
//  Created by BJIT on 19/9/22.
//

import SwiftUI

struct AddToCartDetailView: View {
    //MARK: - Property
    @EnvironmentObject var shop: shop
    var body: some View {
        Button(action: {
            feedback.impactOccurred()
        }, label: {
            Spacer()
            Text("Add to Cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        })//Button
            .padding(15)
            .background(Color(
                red: shop.selectedProduct?.red ?? sampleProduct.red,
                green: shop.selectedProduct?.green ?? sampleProduct.green,
                blue: shop.selectedProduct?.blue ?? sampleProduct.blue)
            )
            .clipShape(Capsule())
    }
}

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .environmentObject(shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
