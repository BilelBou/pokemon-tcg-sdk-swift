//
//  PokemonTCG.swift
//  pokecom-tcg-sdk-swift
//
//  Created by Bilel BOURICHA on 26/12/2024.
//

import Foundation

public class PokemonTCG {
    public let cardService: CardService

    public init(apiKey: String) {
        let networkManager = NetworkManager(apiKey: apiKey)
        self.cardService = CardService(networkManager: networkManager)
    }
}
