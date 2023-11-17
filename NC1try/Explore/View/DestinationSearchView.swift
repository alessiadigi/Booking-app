//
//  DestinationSearchView.swift
//  NC1try
//
//  Created by Alessia Di Gioia on 15/11/23.
//

import SwiftUI

enum DestinationSearchoOptions{
    case location
    case dates
    case guests
}

struct DestinationSearchView: View {
    @Binding var show: Bool
    @State private var destination = ""
    @State private var selectedOption: DestinationSearchoOptions = .location
    @State private var startDate = Date()
    @State private var endDate = Date()
    @State private var numGuestsAdults = 0
    @State private var numGuestsChildren = 0
    @State private var numGuestsInfants = 0
    @State private var numGuestsPets = 0

    var body: some View {
        VStack{
            
            HStack{
                ZStack {
                    Button(action: {
                        withAnimation(.snappy){
                            show.toggle()
                        }
                    }, label: {
                        Image(systemName: "xmark")
                            .foregroundStyle(.black)
                            .padding(7)
                    })
                    .overlay{
                        Circle()
                            .stroke(lineWidth: 0.5)
                            .foregroundStyle(.black)
                }
                }
                
                Spacer()
            }.padding(.leading)
            
            
            VStack(alignment: .leading){
                if selectedOption == .location {
                    Text("Where to?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .imageScale(.small)
                        
                        TextField("Search destinations", text: $destination)
                            .font(.subheadline)
                    }
                    .frame(height: 44)
                    .padding(.horizontal)
                    .overlay{
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(lineWidth: 1)
                            .foregroundStyle(Color(.systemGray4))
                    }
                } else {
                    CollapsedPickerView(title: "Where", description: "Add destination")
                    
                }
                
            }
            .padding()
            .frame(height: selectedOption == .location ? 120 : 64)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .onTapGesture {
                withAnimation(.snappy){
                    selectedOption = .location
                }
            }
            
            //date selection
            
            VStack(alignment: .leading){
                if selectedOption == .dates{
                    Text("When's your trip?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    VStack{
                        DatePicker("From", selection: $startDate, displayedComponents: .date)
                        
                        Divider()
                        
                        DatePicker("To", selection: $endDate, displayedComponents: .date)
                    }
                    .foregroundStyle(.gray)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    
                } else {
                    CollapsedPickerView(title: "When", description: "Any week")
                    
                }
            }
            .padding()
            .frame(height: selectedOption == .dates ? 170 : 64)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .onTapGesture {
                withAnimation(.snappy){
                    selectedOption = .dates
                }
            }
            
            
            //num guests
            
            VStack(alignment: .leading){
                if selectedOption == .guests{
                    Text("Who's coming?")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding(.bottom, 30)
                    
                    Stepper{
                        Text("\(numGuestsAdults) Adults")
                            .fontWeight(.light)
                    } onIncrement: {
                        numGuestsAdults += 1
                    } onDecrement: {
                        guard numGuestsAdults > 0 else {return}
                        numGuestsAdults -= 1
                    }
                    
                    Text("Ages 13 or above")
                        .font(.footnote)
                        .foregroundStyle(.gray)
                        .fontWeight(.light)
                    
                    Divider()
                    
                    Stepper{
                        Text("\(numGuestsChildren) Children")
                            .fontWeight(.light)
                    } onIncrement: {
                        numGuestsChildren += 1
                    } onDecrement: {
                        guard numGuestsChildren > 0 else {return}
                        numGuestsChildren -= 1
                    }
                    
                    Text("Ages 2-12")
                        .font(.footnote)
                        .foregroundStyle(.gray)
                        .fontWeight(.light)
                    
                    Divider()
                    
                    Stepper{
                        Text("\(numGuestsInfants) Infants")
                            .fontWeight(.light)
                    } onIncrement: {
                        numGuestsInfants += 1
                    } onDecrement: {
                        guard numGuestsInfants > 0 else {return}
                        numGuestsInfants -= 1
                    }
                    
                    Text("Under 2")
                        .font(.footnote)
                        .foregroundStyle(.gray)
                        .fontWeight(.light)
                    
                    Divider()
                    
                    Stepper{
                        Text("\(numGuestsPets) Pets")
                            .fontWeight(.light)
                    } onIncrement: {
                        numGuestsPets += 1
                    } onDecrement: {
                        guard numGuestsPets > 0 else {return}
                        numGuestsPets -= 1
                    }
                } else {
                    CollapsedPickerView(title: "Who", description: "Add guests")

                }
            }
            .padding()
            .frame(height: selectedOption == .guests ? 360 : 64)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .onTapGesture {
                withAnimation(.snappy){
                    selectedOption = .guests
                }
            }
            
            
            VStack(){
                
                Spacer()
                
                Divider()
                    .padding(.bottom)
                HStack{
                    VStack(alignment: .leading){
                        
                        Button("Clear all") {
                            destination = ""
                        }
                        .foregroundStyle(.black)
                        .font(.body)
                        .fontWeight(.semibold)
                        .underline()
                        }
                    
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }) {
                        HStack {
                            Image(systemName: "magnifyingglass")
                            Text("Search")
                        }
                        .foregroundStyle(.white)
                        .font(.body)
                        .fontWeight(.semibold)
                        .frame(width: 120, height: 40)
                        .background(.pink)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    }
                }
                .padding(.horizontal, 44)
            }
            .background(.white)
            
        }
    }
}

#Preview {
    DestinationSearchView(show: .constant(false))
}

struct CollapsedPickerView: View {
    let title: String
    let description: String
    var body: some View {
        VStack{
            HStack{
                Text(title)
                    .foregroundStyle(.gray)
                
                Spacer()
                
                Text(description)
            }
            .fontWeight(.semibold)
            .font(.subheadline)
        }
   
    }
}
