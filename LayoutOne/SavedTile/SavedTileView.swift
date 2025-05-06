//
//  SavedTileView.swift
//  LayoutOne
//
//  Created by Sukhrob on 06/05/25.
//

import SwiftUI

protocol SavedTileButton {
    func addTileButton()
}

struct SavedTileView: View {
    var viewModel: SavedTileViewModel
    
    var body: some View {
        NavigationLink(
            destination: Text("Tile ID: \(viewModel.id)")
        ) {
            RatioContainer(heightRatio: 0.5) {
                    Image(systemName: "star")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                        .layoutPriority(1)
                    VStack{
                        Text(viewModel.title)
                            .font(.caption)
                            .foregroundColor(.primary)
                        Text(viewModel.subtitle ?? " ")
                            .font(.caption)
                            .foregroundColor(.cyan)
                    }
                }
            .frame(width: 120, height: 120)
            .cornerRadius(12)
            .shadow(color: Color.gray.opacity(0.4), radius: 5, x: 0, y: 3)
        }
    }
    
}

struct SavedTileView_Previews: PreviewProvider {
    static var previews: some View {
        SavedTileView(
            viewModel: SavedTileViewModel(
                title: "Example Tile",
                imageURL: "star.fill", subtitle: "Optional subtitle"
            )
        )
        .previewLayout(.sizeThatFits)
        .padding()
    }
}


