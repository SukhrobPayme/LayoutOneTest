//
//  SavedTileViewModel.swift
//  LayoutOne
//
//  Created by Sukhrob on 06/05/25.
//

import Foundation

final class SavedTileViewModel: Identifiable, ObservableObject {
    var id = UUID()
    @Published var title: String
    @Published var imageURL: String?
    @Published var subtitle: String?

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


