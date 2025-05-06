//
//  SectionViewModel.swift
//  LayoutOne
//
//  Created by Sukhrob on 05/05/25.
//

import Foundation

final class SectionViewModel<T: Identifiable>: Identifiable, ObservableObject {
    var id = UUID()
    @Published var title: String
    @Published var items: [T]  
    
    init(id: UUID = UUID(), title: String, items: [T]) {
        self.id = id
        self.title = title
        self.items = items
    }
}


