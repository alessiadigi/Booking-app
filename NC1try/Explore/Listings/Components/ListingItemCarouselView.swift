//
//  ListingItemCarouselView.swift
//  NC1try
//
//  Created by Alessia Di Gioia on 15/11/23.
//

import SwiftUI

struct ListingItemCarouselView: View {
    
    let listing: Listing
    
    var body: some View {
        TabView{
            ForEach(listing.imageUrls, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
       
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingItemCarouselView(listing: PreviewData.shared.listings[0])
}
