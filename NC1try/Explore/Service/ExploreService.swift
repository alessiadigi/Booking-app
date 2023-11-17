//
//  ExploreSrvice.swift
//  NC1try
//
//  Created by Alessia Di Gioia on 17/11/23.
//

import Foundation

class ExploreService {
    func fetchListings() async throws -> [Listing] {
        return PreviewData.shared.listings
    }
}
