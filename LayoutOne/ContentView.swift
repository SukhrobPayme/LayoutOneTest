//
//  ContentView.swift
//  LayoutOne
//
//  Created by Sukhrob on 02/05/25.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            ZStack{
                Color.green
                    .edgesIgnoringSafeArea(.all)
                ScrollView {
                    VStack(alignment: .leading, spacing: 24) {
                        ForEach(mockSections) { section in
                            SectionView(viewModel: section, items: section.entity) { item in
                                TileView(viewModel: item)
                            }
                        }
                        .padding()
                    }
                }
            }
        }
    }
}

