//
//  DestinationSearchView.swift
//  AirbnbClone
//
//  Created by Nawab Khairuzzaman Mohammad Kibria on 4/8/24.
//

import SwiftUI

enum DestinationSearchOptions {
    case location
    case dates
    case guests
}

struct DestinationSearchView: View {
    
    @Binding var show: Bool
    @State private var destination = ""
    @State private var selectedOption : DestinationSearchOptions = .location
    @State private var startDate = Date()
    @State private var endDate = Date()
    @State private var numGuests = 0
    
    var body: some View {
        VStack {
            
            HStack {
                Button {
                    withAnimation(.snappy) {
                        show.toggle()
                    }
                } label: {
                    Image(systemName: "xmark.circle")
                        .imageScale(.large)
                        .foregroundStyle(.black)
                }
                
                Spacer()
                
                if(!destination.isEmpty) {
                    Button("Clear") {
                        destination = ""
                    }
                    .foregroundColor(.black)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                }
                
                
                
                
            }.padding()
            
            VStack(spacing: 18) {
                // Location Selection
                
                VStack(alignment: .leading){
                    if(selectedOption == .location) {
                        
                        
                        Text("Where to?")
                            .font(.title2)
                            .fontWeight(.semibold)
                        
                        HStack{
                            Image(systemName: "magnifyingglass")
                                .imageScale(.small)
                            
                            TextField("Search Destination", text: $destination)
                                .font(.subheadline)
                        }
                        .frame(height: 44)
                        .padding(.horizontal)
                        .overlay{
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                                .foregroundStyle(Color(.systemGray4))
                        }
                    }else {
                        CollapsedPickerView(title:"Where", description: "Add destination")
                    }
                }
                .modifier(CollapsibleDestinationViewModifier())
                .frame(height: selectedOption == .location ? 140 : 64)
                .onTapGesture {
                    
                    withAnimation(.snappy) {
                        selectedOption = .location
                    }
                    
                }
                
                
                // date selection view
                VStack(alignment: .leading){
                    if(selectedOption == .dates) {
                        Text("When's your trip?")
                            .font(.title2)
                            .fontWeight(.semibold)
                        
                        VStack {
                            DatePicker("From", selection: $startDate, displayedComponents: .date)
                            
                            Divider()
                            
                            DatePicker("To", selection: $endDate, displayedComponents: .date)
                        }
                        .foregroundStyle(.gray)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        
                        
                        
                    }else {
                        CollapsedPickerView(title:"When", description: "Add dates")
                    }
                }
                .modifier(CollapsibleDestinationViewModifier())
                .frame(height: selectedOption == .dates ? 200 : 64)
                .onTapGesture {
                    withAnimation(.snappy) {
                        selectedOption = .dates
                    }
                }
                
                // num of guests view
                
                VStack{
                    if(selectedOption == .guests) {
                        
                        Text("Who's coming?")
                            .font(.title2)
                            .fontWeight(.semibold)
                        
                        Stepper {
                            Text("\(numGuests) Adults")
                        } onIncrement: {
                            numGuests += 1
                        } onDecrement: {
                            guard numGuests > 0 else {  return }
                            numGuests -= 1
                        }
                        
                    }else {
                        CollapsedPickerView(title:"Who", description: "Add guests")
                    }
                }
                .modifier(CollapsibleDestinationViewModifier())
                .frame(height: selectedOption == .guests ? 140 : 64)
                .onTapGesture {
                    withAnimation(.snappy) {
                        selectedOption = .guests
                    }
                }
            }
            
            
            
            
            Spacer()
        }
    }
}

#Preview {
    DestinationSearchView(show: .constant(false))
}

struct CollapsibleDestinationViewModifier : ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
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
