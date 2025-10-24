//
//  Title.swift
//  MovieUniverse
//
//  Created by Dovudxon Asrorxonov on 23/10/25.
//

import Foundation

struct APIObject: Decodable {
    var results: [Title] = []
 }

struct Title: Decodable, Identifiable {
    var id: Int?
    var title: String?
    var name: String?
    var overview: String?
    var posterPath: String?
}
