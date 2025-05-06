//
//  HeaderComponentModelView.swift
//  LayoutOne
//
//  Created by Sukhrob on 06/05/25.
//

import Foundation

final class HeaderComponentModelView: ObservableObject {
    @Published var title: String
    
    init(title: String) {
        self.title = title
    }
}
