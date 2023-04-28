//
//  ProductDetailView.swift
//  BuyProducts
//
//  Created by BJIT on 19/9/22.
//

import SwiftUI

struct ProductDetailView: View {
    //MARK: - Property
    @EnvironmentObject var shop: shop
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            //NAVBAR
            NavigationBarDetailView()
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)

            //HEADER
            HeaderDetailView()
                .padding(.horizontal)

            //DETAIL Top part
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)

            //Detail bottom
            VStack(alignment: .center, spacing: 0, content: {
                //Rating+ sizes
                RatingSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                //Description
                ScrollView(.vertical, showsIndicators: false, content: {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .multilineTextAlignment(.leading)
                })

                //Quantity+ favorites
                QuantityFavoriteDetailView()
                    .padding(.vertical, 10)

                //Add to cart
                AddToCartDetailView()
                    .padding(.bottom,20)
            })//VStack
                .padding(.horizontal)
                .background(Color.white
                                .clipShape(CustomShape())
                                .padding(.top, -100))

        }) //VSTACK
            .zIndex(0)
            .ignoresSafeArea(.all, edges: .all)
            .background(
                Color(red: shop.selectedProduct?.red ?? sampleProduct.red, green: shop.selectedProduct?.green ??  sampleProduct.green, blue: shop.selectedProduct?.blue ?? sampleProduct.blue)
            ).ignoresSafeArea(.all, edges: .all)
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(shop())
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
