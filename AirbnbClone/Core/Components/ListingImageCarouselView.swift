//
//  ListingImageCarouselView.swift
//  AirbnbClone
//
//  Created by Nawab Khairuzzaman Mohammad Kibria on 4/8/24.
//

import SwiftUI

struct ListingImageCarouselView: View {
    
    var listing : Listing
    
    var body: some View {
        TabView{
            ForEach(listing.imageURLs, id: \.self){ image in
                Image(image).resizable().scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarouselView(listing: DeveloperPreview.shared.listings[0])
}
