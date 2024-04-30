//
//  MealList.swift
//  foodnation
//
//  Created by Brandon Anderson on 4/28/24.
//

import Foundation

/*
struct MealFeed: Codable {
    let results: [Meal]
}
*/
 

struct Meal: Codable, Equatable {
    let title: String
    let imagePath: URL? // Path used to create a URL to fetch the poster image

    // MARK: Additional properties for detail view
    let protein: String

    // MARK: ID property to use when saving movie
    let id: Int

    // MARK: Custom coding keys
    // Allows us to map the property keys returned from the API that use underscores (i.e. `poster_path`)
    // to a more "swifty" lowerCamelCase naming (i.e. `posterPath` and `backdropPath`)
    enum CodingKeys: String, CodingKey {
        case title = "title"
        case imagePath = "image"
        case protein = "protein"
        case id = "id"
    }
}
