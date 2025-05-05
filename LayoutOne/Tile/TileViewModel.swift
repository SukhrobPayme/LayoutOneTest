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
    @Published var subtitle: String?
    @Published var imageURL: String?

    var showImage: Bool {
        imageURL != nil
    }
    var showSubtitle: Bool {
        subtitle != nil
    }

    init(
        title: String,
        imageURL: String? = nil,
        subtitle: String? = nil
    ) {
        self.title = title
        self.imageURL = imageURL
        self.subtitle = subtitle
    }
}

