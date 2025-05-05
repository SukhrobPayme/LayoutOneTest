//
//  SectionView.swift
//  LayoutOne
//
//  Created by Sukhrob on 05/05/25.
//

import SwiftUI

struct SectionView<Item, Content: View>: View {
    
    @ObservedObject var viewModel: SectionViewModel
    
    let items: [Item]
    let content: (Item) -> Content
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(viewModel.title)
                .font(.headline)
                .padding(.leading)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(Array(items.enumerated()), id: \.offset) { _, item in
                        content(item)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}


