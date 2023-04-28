//
//  BrandView.swift
//  BuyProducts
//
//  Created by BJIT on 19/9/22.
//

import SwiftUI

struct BrandView: View {
    //MARK: - Property
    let brand: Brands
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1)
            )
    }
}

struct BrandView_Previews: PreviewProvider {
    static var previews: some View {
        BrandView(brand: brands[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
