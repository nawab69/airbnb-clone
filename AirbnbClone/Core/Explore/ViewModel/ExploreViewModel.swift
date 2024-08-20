//
//  ExploreViewModel.swift
//  AirbnbClone
//
//  Created by Nawab Khairuzzaman Mohammad Kibria on 6/8/24.
//

import Foundation

class ExploreViewModel : ObservableObject {
    @Published var listings = [Listing]()
    
    private let service : ExploreService
    
    init(service: ExploreService) {
        self.service = service
        
        Task {
            await fetchListing()
        }
    }
    
    func fetchListing() async {
        do {
            self.listings = try await service.fetchListings()
        }catch{
            print("DEBUG: failed to fetch listings with \(error.localizedDescription)")
        }
    }
    
    
}
