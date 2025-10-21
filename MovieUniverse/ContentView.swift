//
//  ContentView.swift
//  MovieUniverse
//
//  Created by Dovudxon Asrorxonov on 21/10/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab(Constants.homeString, systemImage: Constants.homeIconString) {
                Text(Constants.homeString)
            }
            Tab(Constants.upcomingString, systemImage: Constants.upcomingIconString) {
                Text(Constants.upcomingString)
            }
            Tab(Constants.searchString, systemImage: Constants.searchIconString) {
                Text(Constants.searchString)
            }
            Tab(Constants.downloadString, systemImage: Constants.downloadIconString) {
                Text(Constants.downloadString)
            }

        }
    }
}

#Preview {
    ContentView()
}
