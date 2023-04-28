//
//  TopPartDetailView.swift
//  BuyProducts
//
//  Created by BJIT on 19/9/22.
//

import SwiftUI

struct TopPartDetailView: View {
    //MARK: - Property
    @State private var isAnimating: Bool = false
    @EnvironmentObject var shop: shop
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            //Price
            VStack(alignment: .leading, spacing: 6, content: {
                Text("Price")
                    .fontWeight(.semibold)
                Text(shop.selectedProduct?.formattedPrices ?? sampleProduct.formattedPrices)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            })
                .offset(y: isAnimating ? -50:-75)
            Spacer()
            //PHOTO
            Image(shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0:-35)
        })//HSTACK
            .onAppear(perform: {
                withAnimation(.easeOut(duration: 0.75)) {
                    isAnimating.toggle()
                }
            })
    }
}

struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
            .environmentObject(shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
