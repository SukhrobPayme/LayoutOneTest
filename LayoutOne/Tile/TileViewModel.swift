//
//  TileViewModel.swift
//  LayoutOne
//
//  Created by Sukhrob on 05/05/25.
//

import Foundation

final class TileViewModel: Identifiable {
    var id = UUID()
    @Published var title: String
    @Published var imageURL: String?

    var showImage: Bool {
        imageURL != nil
    }
    init(
        title: String,
        imageURL: String? = nil
    ) {
        self.title = title
        self.imageURL = imageURL
    }
}

