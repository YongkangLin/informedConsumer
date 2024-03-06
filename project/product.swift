//
//  product.swift
//  project
//
//  Created by Yongkang Lin on 3/5/24.
//

import Foundation

struct ProductResponse: Codable {
    let product: Product
}

struct Product: Codable, Identifiable {
    let id = UUID()
    let title: String
    let manufacturer: String
    let images: [String]
    let online_stores: [OnlineStore]?
    var scannedBarcode: String?
    var news: [news]? = []
    var ingredientAnalysis: String?
}

struct news: Codable{
    let headline: String
    let url: String
}

struct OnlineStore: Codable {
    let name: String
    let price: String
    let url: String
}

enum LoadingState {
    case idle
    case loading
    case failed(String)
    case loaded
}

