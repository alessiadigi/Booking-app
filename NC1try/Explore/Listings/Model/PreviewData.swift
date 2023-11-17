//
//  PreviewData.swift
//  NC1try
//
//  Created by Alessia Di Gioia on 17/11/23.
//

import Foundation

class PreviewData{
    static let shared = PreviewData()
    var listings: [Listing] = [
        .init(
            id:NSUUID().uuidString,
            ownerUid:NSUUID().uuidString,
            ownerName: "Anna Smith",
            ownerImageUrl: "Host profile photo",
            ownerYearsHosting: 3,
            pricePerNight: 687,
            latitude: 25.7850,
            longitude: -80.1936,
            imageUrls: ["listing-1", "listing-2", "listing-3", "listing-4"],
            address: "129 Main St",
            city: "Miami",
            state: "Florida",
            title: "Miami Villa",
            rating: 4.86,
            features: [.checkIn, .greatLocation],
            amenities:[.wifi, .kitchen, .tv],
            type: .villa
        ),
        
            .init(
                id:NSUUID().uuidString,
                ownerUid:NSUUID().uuidString,
                ownerName: "Gina Paula Torres",
                ownerImageUrl: "gina-host",
                ownerYearsHosting: 5,
                pricePerNight: 235,
                latitude: 4.5980,
                longitude: -74.0758,
                imageUrls: ["gina-house1", "gina-house2", "gina-house3"],
                address: "Calle 119a",
                city: "Bogotà",
                state: "Colombia",
                title: "Apartment in Bogotà",
                rating: 4.22,
                features: [.checkIn, .greatLocation],
                amenities:[.pool, .laundry, .balcony],
                type: .apartment
            ),
        
            .init(
                id:NSUUID().uuidString,
                ownerUid:NSUUID().uuidString,
                ownerName: "Daniel Hunter",
                ownerImageUrl: "daniel-host",
                ownerYearsHosting: 2,
                pricePerNight: 437,
                latitude: 41.85,
                longitude: -87.65,
                imageUrls: ["listing-1", "listing-2", "listing-3", "listing-4"],
                address: "W Jackson Blvd",
                city: "Chicago",
                state: "Illinois",
                title: "Apartment in Chicago",
                rating: 3.57,
                features: [.checkIn, .greatLocation],
                amenities: [.pool, .laundry, .balcony],
                type: .apartment
            ),
        
            .init(
                id:NSUUID().uuidString,
                ownerUid:NSUUID().uuidString,
                ownerName: "Chris Martin",
                ownerImageUrl: "chris-host",
                ownerYearsHosting:2,
                pricePerNight: 655,
                latitude: 34.2,
                longitude: 118.8426,
                imageUrls: ["listing-1", "listing-2", "listing-3", "listing-4"],
                address: "234 Main St",
                city: "Los Angeles",
                state: "California",
                title: "Beautiful villa in Los Angeles",
                rating: 4.68,
                features: [.checkIn, .greatLocation],
                amenities: [.pool, .laundry, .balcony, .alarmSystem, .office, .kitchen],
                type: .villa
            ),
        
            .init(
                id:NSUUID().uuidString,
                ownerUid:NSUUID().uuidString,
                ownerName: "Mike Petrucci",
                ownerImageUrl: "mike-host",
                ownerYearsHosting: 7,
                pricePerNight: 345,
                latitude: 45.4654219,
                longitude: 9.1859243,
                imageUrls: ["listing-1", "listing-2", "listing-3", "listing-4"],
                address: "Via Fuggi 26",
                city: "Milano",
                state: "Italy",
                title: "House in the center of Milan",
                rating: 3.45,
                features: [.checkIn, .greatLocation],
                amenities: [.pool, .laundry, .balcony, .alarmSystem, .office, .kitchen],
                type: .house
            ),
        
            .init(
                id:NSUUID().uuidString,
                ownerUid:NSUUID().uuidString,
                ownerName: "Paola Nanti",
                ownerImageUrl: "paola-host",
                ownerYearsHosting: 6,
                pricePerNight: 876,
                latitude: 45.808060,
                longitude: 9.085176,
                imageUrls: ["listing-1", "listing-2", "listing-3", "listing-4"],
                address: "Via Carlo Linati 11",
                city: "Como",
                state: "Italy",
                title: "Stunning town House in Como",
                rating: 4.66,
                features: [.checkIn, .greatLocation],
                amenities: [.pool, .laundry, .balcony],
                type: .townHouse
            ),
        
            .init(
                id:NSUUID().uuidString,
                ownerUid:NSUUID().uuidString,
                ownerName: "Gregory Johnson",
                ownerImageUrl: "greg-host",
                ownerYearsHosting: 5,
                pricePerNight: 330,
                latitude: 51.507351,
                longitude: -0.127758,
                imageUrls: ["listing-1", "listing-2", "listing-3", "listing-4"],
                address: "Garrick Street",
                city: "London",
                state: "United Kingdom",
                title: "Villa in the heart of London",
                rating: 4.98,
                features: [.checkIn, .greatLocation],
                amenities: [.pool, .laundry, .balcony, .alarmSystem, .office, .kitchen],
                type: .villa
            ),
    ]
}



