//
//  SearchAndFilterBar.swift
//  NC1try
//
//  Created by Alessia Di Gioia on 14/11/23.
//

import SwiftUI

struct SearchAndFilterBar: View {
    var body: some View {
        
        VStack{
            
            HStack{
                Image(systemName: "magnifyingglass")
                
                VStack(alignment: .leading, spacing: 2) {
                    Text("Where to?")
                        .font(.headline)
                    
                    Text("Anywhere - Any week - Add guests")
                        .font(.caption2)
                        .foregroundStyle(.gray
                        )
                    
                }
                Spacer()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "slider.horizontal.3")
                        .foregroundStyle(.black)
                        .padding(7)
                })
                .overlay{
                    Circle()
                        .stroke(lineWidth: 0.5)
                        .foregroundStyle(.black)
                }
            }
            .padding(.horizontal)
            .padding(.vertical, 7)
            .overlay {
                Capsule()
                    .stroke(lineWidth: 0.5)
                    .foregroundStyle(Color(.systemGray4))
                    .shadow(color: .black.opacity(0.4), radius: 2)
            }
            .padding()
            
        ScrollView(.horizontal, showsIndicators: false){
            HStack{
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "lamp.desk")
                        .foregroundStyle(.black)
                        .padding(7)
                })
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "fireplace")
                        .foregroundStyle(.black)
                        .padding(7)
                })
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "figure.skiing.downhill")
                        .foregroundStyle(.black)
                        .padding(7)
                })
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "sailboat")
                        .foregroundStyle(.black)
                        .padding(7)
                })
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "network.slash")
                        .foregroundStyle(.black)
                        .padding(7)
                })
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "thermometer.sun")
                        .foregroundStyle(.black)
                        .padding(7)
                })
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "thermometer.snowflake")
                        .foregroundStyle(.black)
                        .padding(7)
                })
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "mountain.2")
                        .foregroundStyle(.black)
                        .padding(7)
                })
                
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "flame")
                        .foregroundStyle(.black)
                        .padding(7)
                })
                
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "bicycle")
                        .foregroundStyle(.black)
                        .padding(7)
                })
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "figure.equestrian.sports")
                        .foregroundStyle(.black)
                        .padding(7)
                })
                
            }
            .font(.system(size: 30))
            .padding(.horizontal)
        }
            
        }
        
        
    }
    
}

#Preview {
    SearchAndFilterBar()
}
