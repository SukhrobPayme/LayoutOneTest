//
//  SectionView.swift
//  LayoutOne
//
//  Created by Sukhrob on 05/05/25.
//

import SwiftUI

struct SectionView<T: Identifiable, Content: View>: View {
    var viewModel: SectionViewModel<T>
    var items: [T]
    var content: (T) -> Content
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(viewModel.title)
                .font(.headline)
                .padding(.leading)
                .padding(.bottom, 5)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(Array(items.enumerated()), id: \.offset) { _, item in
                        content(item)
                            .frame(width: 120, height: 120)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        // Sample mock data
        let sampleItems = [
            TileViewModel(title: "One"),
            TileViewModel(title: "Two"),
            TileViewModel(title: "Three")
        ]
        
        let sectionVM = SectionViewModel<TileViewModel>(
            title: "Sample Section",
            items: sampleItems
        )
        
        return SectionView(viewModel: sectionVM, items: sectionVM.items) { item in
            VStack {
                Image(systemName: "star")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 40)
                    .foregroundColor(.blue)
                Text(item.title)
                    .font(.subheadline)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.gray.opacity(0.2))
            .cornerRadius(10)
        }
        .previewLayout(.sizeThatFits)
    }
}

