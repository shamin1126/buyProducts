//
//  ContentView.swift
//  BuyProducts
//
//  Created by BJIT on 15/9/22.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Properties
    @EnvironmentObject var shop: shop

    //MARK: - Body
    var body: some View {
        ZStack {
            //logic for showing home view
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack(spacing: 0) {
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)

                    //MARK: ****Problem****
                    ScrollView(.vertical, showsIndicators: false, content: {
                        VStack(spacing: 0) {
                            FeaturedTabView()
                                .padding(.vertical, 20)
                            CategoryGridView()

                            TitleView(title: "Helmet")

                            LazyVGrid(columns: gridLayout, spacing: 15, content: {
                                ForEach(products) {
                                    product in
                                    ProductItemView(product: product)
                                        .onTapGesture {
                                            feedback.impactOccurred()
                                            withAnimation(.easeOut) {
                                                shop.selectedProduct = product
                                                shop.showingProduct = true
                                            }
                                        }

                                }//LOOP
                            })//GRID
                                .padding(15)
                            //Brands
                            TitleView(title: "Brands")
                            BrandGridView()

                            //Footer
                            FooterView()
                                .padding(.horizontal)
                        } //VStack
                    }) //Scroll
                //MARK: ****Problem****
                }//Vstack
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
                ProductDetailView()
            }
        } //ZStack
        .ignoresSafeArea(.all, edges: .top)
    }
}
//MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(shop())
    }
}
