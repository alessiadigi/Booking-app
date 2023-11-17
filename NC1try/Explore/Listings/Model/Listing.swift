//
//  Listing.swift
//  NC1try
//
//  Created by Alessia Di Gioia on 17/11/23.
//

import Foundation

struct Listing: Identifiable, Codable, Hashable {
    let id: String
    let ownerUid: String
    let ownerName: String
    let ownerImageUrl: String
    let ownerYearsHosting: Int
    var pricePerNight: Int
    let latitude: Double
    let longitude: Double
    var imageUrls: [String]
    let address: String
    let city: String
    let state: String
    let title: String
    var rating: Double
    var features: [ListingFeatures]
    var amenities: [ListingAmenities]
    let type: ListingType
}

enum ListingFeatures: Int, Codable, Identifiable, Hashable {
    case checkIn
    case greatLocation
    
    var imageName: String {
            switch self {
            case .checkIn: return "key"
            case .greatLocation: return "location"
            }
        }
    
    var title: String {
            switch self {
            case .checkIn: return "Great check-in experience"
            case .greatLocation: return "Great location"
            }
        }
    
    var subtitle: String {
            switch self {
            case .checkIn: return "100% of recent guests gave the check-in process a 5-star rating."
            case .greatLocation: return "90% of recent guests gave the location a 5-star rating."
            }
        }

    
    var id: ListingFeatures { self }
}

enum ListingAmenities: Int, Codable, Identifiable, Hashable {
    case pool
    case wifi
    case kitchen
    case laundry
    case balcony
    case alarmSystem
    case office
    case tv
    
    var title: String {
            switch self {
            case .pool: return "Pool"
            case .wifi: return "Wi-Fi"
            case .kitchen: return "Kitchen"
            case .laundry: return "Laundry"
            case .balcony: return "Balcony"
            case .alarmSystem: return "Alarm System"
            case .office: return "Office"
            case .tv: return "TV"
            }
        }
    
    var imageName: String {
            switch self {
            case .pool: return "figure.pool.swim"
            case .wifi: return "wifi"
            case .kitchen: return "fork.knife"
            case .laundry: return "washer"
            case .balcony: return "building"
            case .alarmSystem: return "checkerboard.shield"
            case .office: return "pencil.and.ruler.fill"
            case .tv: return "tv"
            }
        }
    var id: ListingAmenities { self }
}

enum ListingType: Int, Codable, Identifiable, Hashable {
    case apartment
    case house
    case townHouse
    case villa
    
    var description: String {
        switch self {
        case .apartment: return "Apartment"
        case .house: return "House"
        case .townHouse: return "Town House"
        case .villa: return "Villa"
        }
    }
    
    var id: ListingType { self }
}
