//
//  HeaderDetailView.swift
//  BuyProducts
//
//  Created by BJIT on 19/9/22.
//

import SwiftUI

struct HeaderDetailView: View {
    //MARK: - Property
    @EnvironmentObject var shop: shop
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            Text("Protective Gear")
            Text(shop.selectedProduct?.name ??  sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        })
    }
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .environmentObject(shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
