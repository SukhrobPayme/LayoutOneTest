//
//  ContentView.swift
//  LayoutOne
//
//  Created by Sukhrob on 02/05/25.
//

import SwiftUI

struct ContentView: View {
    @State var tiles: [TileViewModel] = []
    @State var seacrhTerm = ""
    
    var filteredTilers: [TileViewModel] {
        guard !tileSection.items.isEmpty else {return tileSection.items}
        return tileSection.items.filter{$0.title.localizedStandardContains(seacrhTerm)}
    }
    
    var body: some View {
        NavigationStack {
            ZStack(alignment: .top) {
                
                Color.backgroundSet
                    .edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 24) {
                    SectionView(viewModel: savedTileSection, items: savedTileSection.items) { item in
                        SavedTileView(viewModel: item)
                }
                        SectionView(viewModel: tileSection, items: filteredTilers) { item in
                            TileView(viewModel: item)
                    }

                }
                .searchable(text: $seacrhTerm)
            }
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 14")
    }
}
