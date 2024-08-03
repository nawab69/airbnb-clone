//
//  ExploreView.swift
//  AirbnbClone
//
//  Created by Nawab Khairuzzaman Mohammad Kibria on 3/8/24.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack(spacing: 32) {
                    ForEach(0 ... 10, id: \.self) {
                        listing in ListingItemView()
                            .frame(height: 410)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                }.padding()
            }
        }
    }
}

#Preview {
    ExploreView()
}
