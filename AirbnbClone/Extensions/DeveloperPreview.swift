//
//  DeveloperPreview.swift
//  AirbnbClone
//
//  Created by Nawab Khairuzzaman Mohammad Kibria on 6/8/24.
//

import Foundation

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    var listings: [Listing] = [
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "John Smith",
            ownerImageUrl: "profile-1",
            numberOfBedrooms: 4,
            numberOfbathrooms: 3,
            numberOfGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 567,
            latitude: 25.7850,
            longitudde: -80.1936,
            imageURLs: ["listing-2","listing-1", "listing-3", "listing-4"],
            address: "124 main street",
            city: "Miami",
            state: "Florida",
            title: "Miami Villa",
            rating: 4.86,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
            type: .villa
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Alice Smith",
            ownerImageUrl: "profile-1",
            numberOfBedrooms: 3,
            numberOfbathrooms: 2,
            numberOfGuests: 6,
            numberOfBeds: 4,
            pricePerNight: 150,
            latitude: 37.7749,
            longitudde: -122.4194,
            imageURLs: ["listing-1", "listing-2", "listing-3", "listing-4"],
            address: "123 Main St",
            city: "San Francisco",
            state: "CA",
            title: "Beautiful Apartment in SF",
            rating: 4.8,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .kitchen, .tv, .laundry, .pool],
            type: .apartment
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Bob Johnson",
            ownerImageUrl: "ownerImageUrl2",
            numberOfBedrooms: 4,
            numberOfbathrooms: 3,
            numberOfGuests: 8,
            numberOfBeds: 5,
            pricePerNight: 200,
            latitude: 34.0522,
            longitudde: -118.2437,
            imageURLs: ["listing-3", "listing-2", "listing-5", "listing-4", "listing-6"],
            address: "456 Oak St",
            city: "Los Angeles",
            state: "CA",
            title: "Luxury House in LA",
            rating: 4.9,
            features: [.superHost],
            amenities: [.wifi, .kitchen, .tv, .laundry, .alarmSystem],
            type: .house
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Cathy Davis",
            ownerImageUrl: "ownerImageUrl3",
            numberOfBedrooms: 2,
            numberOfbathrooms: 1,
            numberOfGuests: 4,
            numberOfBeds: 2,
            pricePerNight: 120,
            latitude: 40.7128,
            longitudde: -74.0060,
            imageURLs: ["listing-4", "listing-3", "listing-5", "listing-6"],
            address: "789 Pine St",
            city: "New York",
            state: "NY",
            title: "Cozy Townhouse in NYC",
            rating: 4.7,
            features: [.selfCheckIn],
            amenities: [.wifi, .kitchen, .tv, .office, .balcony],
            type: .townHouse
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "David Brown",
            ownerImageUrl: "ownerImageUrl4",
            numberOfBedrooms: 5,
            numberOfbathrooms: 4,
            numberOfGuests: 10,
            numberOfBeds: 6,
            pricePerNight: 300,
            latitude: 25.7617,
            longitudde: -80.1918,
            imageURLs: ["listing-5", "listing-6", "listing-3", "listing-2", "listing-1"],
            address: "1010 Ocean Dr",
            city: "Miami",
            state: "FL",
            title: "Spacious Villa in Miami",
            rating: 5.0,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .kitchen, .tv, .laundry, .pool, .balcony],
            type: .villa
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Emily Clark",
            ownerImageUrl: "ownerImageUrl5",
            numberOfBedrooms: 3,
            numberOfbathrooms: 2,
            numberOfGuests: 6,
            numberOfBeds: 4,
            pricePerNight: 180,
            latitude: 51.5074,
            longitudde: -0.1278,
            imageURLs: ["listing-6", "listing-2", "listing-3", "listing-4"],
            address: "111 Baker St",
            city: "London",
            state: "England",
            title: "Modern Apartment in London",
            rating: 4.6,
            features: [.superHost],
            amenities: [.wifi, .kitchen, .tv, .office, .laundry],
            type: .apartment
        ),
        
        
    ]
}
