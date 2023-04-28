//
//  ProductItemView.swift
//  BuyProducts
//
//  Created by BJIT on 19/9/22.
//

import SwiftUI

struct ProductItemView: View {
    //MARK: - Property
    let product: Products
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            //PHOTO
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            } //ZStack
            .background(Color(red: product.red, green: product.green, blue: product.blue))
            .cornerRadius(12)

            //NAME
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            //PRICE
            Text(product.formattedPrices)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        })
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[0])
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            .background(colorBackground)
    }
}
