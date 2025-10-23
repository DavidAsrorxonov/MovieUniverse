//
//  HorizontalListView.swift
//  MovieUniverse
//
//  Created by Dovudxon Asrorxonov on 23/10/25.
//

import SwiftUI

struct HorizontalListView: View {
    let header = Constants.trendingMovieString
    var titles = [Constants.testTitleUrl, Constants.testTitleUrl2, Constants.testTitleUrl3]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(header)
                .font(.title)
            
            ScrollView (.horizontal){
                LazyHStack {
                    ForEach(titles, id: \.self) {title in
                        AsyncImage(url: URL(string: title)){image in
                            image
                                .resizable()
                                .scaledToFit()
                        } placeholder: {
                            ProgressView()
                        }
                        .frame(width: 120, height: 200)
                    }
                }
            }
        }
    }
}

#Preview {
    HorizontalListView()
}
