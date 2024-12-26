//
//  CardService.swift
//  pokecom-tcg-sdk-swift
//
//  Created by Bilel BOURICHA on 26/12/2024.
//

import Foundation

public class CardService {
    private let networkManager: NetworkManager

    public init(networkManager: NetworkManager) {
        self.networkManager = networkManager
    }

    public func findCard(by id: String) async throws -> PokemonCard {
        let endpoint = Endpoint(path: "cards/\(id)")
        return try await networkManager.request(endpoint: endpoint)
    }

    public func searchCard(query: String) async throws -> PokemonCardResponse {
        let endpoint = Endpoint(path: "cards", parameters: ["q":query])
        return try await networkManager.request(endpoint: endpoint)
    }
}
