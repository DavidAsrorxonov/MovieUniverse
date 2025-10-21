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
        VStack {
            AsyncImage(url: URL(string: heroTestTitle)) {
                image in image.resizable().scaledToFit()
            } placeholder: {
                ProgressView()
            }
        }
    }
}

#Preview {
    HomeView()
}
