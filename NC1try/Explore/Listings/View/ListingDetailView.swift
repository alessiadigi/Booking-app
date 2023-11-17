//
//  ListingDetailView.swift
//  NC1try
//
//  Created by Alessia Di Gioia on 15/11/23.
//

import SwiftUI
import MapKit

struct ListingDetailView: View {
    
    let listing: Listing
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ScrollView{
            
            ZStack(alignment: .topLeading) {
                ListingItemCarouselView(listing: listing)
                    .frame(height: 320)
                
                Button(action: {
                    dismiss()
                }, label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.black)
                        .background{
                            Circle()
                                .fill(.white)
                                .frame(width: 32, height: 32)
                                
                        }
                        .padding(32)
                })
                
            }
       
            
            VStack(alignment: .leading, spacing: 8) {
                Text(listing.title)
                    .font(.title)
                    .fontWeight(.semibold)
                
                VStack(alignment: .leading){
                    
                    Text("Entire \(listing.type.description) in \(listing.city), \(listing.state)")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .padding(.top, 7)
                    
                    HStack{
                        Text("3 guests")
                        Text(" - ")
                        Text("2 bedrooms")
                        Text(" - ")
                        Text("2 bathrooms")
                    }
                    .font(.caption)
                    .foregroundStyle(Color(.systemGray2))
                    
                    
                    HStack(spacing: 2){
                        Image(systemName: "star.fill")
                            .foregroundStyle(.black)
                        Text("4.86")
                            .foregroundStyle(.black)
                        
                        Text(" - ")
                        
                        Text("28 reviews")
                            .underline()
                            .fontWeight(.semibold)
                    }
                    .font(.caption)
                }
            }
            .padding(.leading)
            .frame(maxWidth: .infinity,alignment: .leading)
            
            Divider()
            
            //host info view
            
            VStack(alignment: .leading){
                HStack{
                    
                    Image(listing.ownerImageUrl)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 64, height: 64)
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading){
                        Text("Hosted by Anna Smith")
                            .font(.headline)
                            .fontWeight(.semibold)
                        Text("3 years hosting")
                            .font(.headline)
                            .foregroundStyle(Color(.systemGray2))
                            .fontWeight(.regular)
                        
                    }
                    Spacer()
                    
                }
                .padding(.leading)
            }
            
            Divider()
            
            //features
            
            VStack(alignment: .leading, spacing: 16){
                ForEach(0 ..< 2) { feature in
                    HStack(spacing: 12){
                        Image(systemName: "key")
                        
                        VStack(alignment: .leading) {
                            Text("Great check-in experience")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            
                            Text("100% of recent guests gave the check-in process a 5-star rating.")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                        Spacer()
                    }
                    .padding(.horizontal)
                    .padding(2)
                }
            }
            
            Divider()
            
            //bedrooms
            
            VStack(alignment: .leading){
                Text("Where you'll spleep")
                    .font(.headline)
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 16){
                        ForEach(1 ..< 5){ bedroom in
                            VStack(alignment: .leading, spacing: 7){
                                Image(systemName: "bed.double")
                                    .font(.title2)
                                Text("Bedroom \(bedroom)")
                                    .font(.callout)
                                    .fontWeight(.semibold)
                                Text("1 king bed")
                                    .font(.callout)
                                    .fontWeight(.light)
                            }
                            .frame(width: 132, height: 100)
                            .overlay{
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(lineWidth: 0.5)
                                    .foregroundStyle(Color(.systemGray3))
                            }
                        }
                    }
                    
                }
                .scrollTargetBehavior(.paging)
            }
            .padding()
            
            Divider()
            
            //what offers
            
            VStack(alignment: .leading, spacing: 16){
                Text("What this place offers")
                    .font(.headline)
                ForEach(0 ..< 5) { feature in
                    
                    HStack{
                        Image(systemName: "wifi")
                            .frame(width: 32)
                        
                        Text("Wifi")
                            .font(.footnote)
                        
                        Spacer()
                        
                    }
                }
            }
            .padding()
            
            Divider()
            
            VStack(alignment: .leading, spacing: 16) {
                Text("Where you'll be")
                    .font(.headline)
                
                Map()
                    .frame(height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            .padding()
        }
        .ignoresSafeArea()
        .padding(.bottom, 64)
        .overlay(alignment: .bottom) {
            VStack{
                Divider()
                    .padding(.bottom)
                HStack{
                    VStack(alignment: .leading){
                        HStack{
                            Text("$450")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            Text("night")
                        }
                        Text("3-10 Mar")
                            .font(.footnote)
                            .underline()
                            .fontWeight(.semibold)
                        }
                    
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }) {
                        Text("Reserve")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 140, height: 40)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }
                }
                .padding(.horizontal, 32)
            }
            .background(.white)
        }
    }
}


#Preview {
    ListingDetailView(listing: PreviewData.shared.listings[0])
}
