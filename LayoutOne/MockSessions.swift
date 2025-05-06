//
//  MockSessions.swift
//  LayoutOne
//
//  Created by Sukhrob on 05/05/25.
//

import Foundation

let tileSection = SectionViewModel<TileViewModel>(
    title: "Оплата Услуг",
    items: [
        TileViewModel(title: "Популярное", imageURL: "star"),
        TileViewModel(title: "Мобильные операторы", imageURL: "star"),
        TileViewModel(title: "Коммунальные Услуги", imageURL: "star"),
        TileViewModel(title: "Интернет-провайдеры", imageURL: "star")
    ]
)

let savedTileSection = SectionViewModel<SavedTileViewModel>(
    title: "Сохраненные Платежи",
    items: [
        SavedTileViewModel(title: "Alex", imageURL: "star", subtitle: "Subtitle"),
        SavedTileViewModel(title: "Alex", imageURL: "star", subtitle: "Subtitle"),
        SavedTileViewModel(title: "Alex", imageURL: "star", subtitle: "Subtitle"),
        SavedTileViewModel(title: "Alex", imageURL: "star", subtitle: "Subtitle"),
        SavedTileViewModel(title: "Alex", imageURL: "star", subtitle: "Subtitle"),
        SavedTileViewModel(title: "Alex", imageURL: "star", subtitle: "Subtitle")
    ]
)


//func encode<T: Codable>(model: T) throws -> Data {
//    return try JSONEncoder().encode(T.self)
//}
//
//func decode<T>(data: Data) throws -> T {
//    return try JSONDecoder().decode(T.self, from: data)
//}
