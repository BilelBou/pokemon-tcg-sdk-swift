//
//  Set.swift
//  pokecom-tcg-sdk-swift
//
//  Created by Bilel BOURICHA on 26/12/2024.
//

import Foundation

import Foundation

public struct Set: Codable {
    public let id: String
    public let name: String
    public let series: String
    public let printedTotal: Int
    public let total: Int
    public let legalities: Legalities?
    public let ptcgoCode: String?
    public let releaseDate: String
    public let updatedAt: String
    public let images: SetImages

    // MARK: - Nested Types

    public struct Legalities: Codable {
        public let standard: String?
        public let expanded: String?
        public let unlimited: String?
    }

    public struct SetImages: Codable {
        public let symbol: String
        public let logo: String
    }
}
