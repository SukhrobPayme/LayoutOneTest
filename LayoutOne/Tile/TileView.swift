//
//  TileView.swift
//  LayoutOne
//
//  Created by Sukhrob on 05/05/25.
//

import SwiftUI

protocol TileViewState {
    func addTileButton()
}

struct TileView: View {
    
    var viewModel: TileViewModel

    var body: some View {
        NavigationLink(
            destination: Text("Tile ID: \(viewModel.id)"),
            label: {
                VStack(alignment: .leading, spacing: 8) {
                    if let imageName = viewModel.imageURL {
                        Image(systemName: imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.blue)
                    }
                    
                    Text(viewModel.title)
                        .font(.headline)
                        .foregroundColor(.primary)
                    
                    if let subtitle = viewModel.subtitle {
                        Text(subtitle)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
                .padding()
                .frame(width: 180, height: 140)
                .background(Color.red)
                .cornerRadius(12)
                .shadow(color: .gray.opacity(0.3), radius: 5, x: 0, y: 3)
            }
        )
    }
}
