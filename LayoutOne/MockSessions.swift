//
//  MockSessions.swift
//  LayoutOne
//
//  Created by Sukhrob on 05/05/25.
//

import Foundation

let mockSections: [SectionViewModel] = [
    SectionViewModel(
        title: "Favorites",
        entity: [
            TileViewModel(title: "Sam", subtitle: "Send money"),
            TileViewModel(title: "Bills", subtitle: "Utilities")
        ]
    ),
    SectionViewModel(
        title: "Recent",
        entity: [
            TileViewModel(title: "Coffee", subtitle: "Starbucks"),
            TileViewModel(title: "Groceries", subtitle: "Supermarket"),
            TileViewModel(title: "Taxi", subtitle: "Uber")
        ]
    )
]

//func encode<T: Codable>(model: T) throws -> Data {
//    return try JSONEncoder().encode(T.self)
//}
//
//func decode<T>(data: Data) throws -> T {
//    return try JSONDecoder().decode(T.self, from: data)
//}
