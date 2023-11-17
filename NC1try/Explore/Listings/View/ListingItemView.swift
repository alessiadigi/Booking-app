//
//  ListingItemView.swift
//  NC1try
//
//  Created by Alessia Di Gioia on 14/11/23.
//

import SwiftUI

struct ListingItemView: View {
    
    let listing: Listing
    
    var body: some View {
        VStack(spacing: 8){
            //images
            
            ListingItemCarouselView(listing: listing)
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            //listing details
            
            HStack(alignment: .top){
                //details
                VStack(alignment: .leading) {
                    Text("\(listing.city), \(listing.state)")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    
                    Text("Private host")
                        .foregroundStyle(.gray)
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    HStack(spacing: 2){
                        Text("$\(listing.pricePerNight)")
                            .fontWeight(.semibold)
                            .foregroundStyle(.black)
                        Text("night")
                            .foregroundStyle(.black)
                    }
                }
                .font(.footnote)
                
                Spacer()
                
                //rating
                
                HStack(spacing: 2){
                    Image(systemName: "star.fill")
                        .foregroundStyle(.black)
                    Text("\(listing.rating)")
                        .foregroundStyle(.black)
                }
                .font(.footnote)
            }
        }
    }
}

#Preview {
    ListingItemView(listing: PreviewData.shared.listings[0])
}
