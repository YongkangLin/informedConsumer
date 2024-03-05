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
    var scannedBarcode: String?
    var news: [String]? = []
}

enum LoadingState {
    case idle
    case loading
    case failed(String)
    case loaded
}

