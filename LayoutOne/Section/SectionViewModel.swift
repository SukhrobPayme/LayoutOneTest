//
//  SectionViewModel.swift
//  LayoutOne
//
//  Created by Sukhrob on 05/05/25.
//

import Foundation

final class SectionViewModel: Identifiable, ObservableObject {
    var id = UUID()
    @Published var title: String
    @Published var entity: [TileViewModel]
    
    init(id: UUID = UUID(), title: String, entity: [TileViewModel]) {
        self.id = id
        self.title = title
        self.entity = entity
    }
}

