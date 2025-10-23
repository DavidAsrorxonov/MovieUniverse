//
//  HomeView.swift
//  MovieUniverse
//
//  Created by Dovudxon Asrorxonov on 21/10/25.
//

import SwiftUI

struct HomeView: View {
    var heroTestTitle = Constants.testTitleUrl
    
    var body: some View {
        GeometryReader {geo in
            ScrollView {
                LazyVStack {
                    AsyncImage(url: URL(string: heroTestTitle)) {
                        image in image.resizable().scaledToFit()
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: geo.size.width, height: geo.size.height * 0.85)
                    
                    HStack {
                        Button {} label: {
                            Text(Constants.playString)
                                .ghostButton()
                        }
                        Button {} label: {
                            Text(Constants.downloadString)
                                .ghostButton()
                        }
                    }
                    
                    HorizontalListView(header: Constants.trendingMovieString)
                    HorizontalListView(header: Constants.trendingTVString)
                    HorizontalListView(header: Constants.topRatedMovieString)
                    HorizontalListView(header: Constants.topRatedTVString)
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
