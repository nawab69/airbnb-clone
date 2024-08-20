//
//  ExploreService.swift
//  AirbnbClone
//
//  Created by Nawab Khairuzzaman Mohammad Kibria on 6/8/24.
//

import Foundation

class ExploreService {
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview.shared.listings
    }
}
