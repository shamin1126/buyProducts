//
//  CategoryGridView.swift
//  BuyProducts
//
//  Created by BJIT on 19/9/22.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: [], content: {
                Section(header:
                            SectionView(rotateClockWise: false),
                        footer: SectionView(rotateClockWise: true)) {
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    }
                }
            }) //GRID
                .frame(height: 140)
                .padding(.horizontal, 15)
                .padding(.vertical, 10)
        }) //SCROLL
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
