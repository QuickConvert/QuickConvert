//
//  QuickConvertTabView.swift
//  QuickConvert
//
//  Created by Nevio Hirani on 02.10.23.
//

import SwiftUI

struct QuickConvertTabView: View {
    /// States that keeps track of the sheetView and TabBar:
    /// **         - selectedTab                                            **
    /// **         - isSheetPresented: Bool                        **
    @State private var selectedTab = 0
    @State private var isSheetPresented = false
    
    var body: some View {
        /// Creates a TabBar with tree options:
        /// - Categories -> 0
        /// - Favourites -> 1
        /// - Search       -> 2
        /// Each state is tracked by the defined state `$selectedTab`
        TabView(selection: $selectedTab ) {
            CategoryView()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Categories")
                }
                .onAppear { selectedTab = 0 }
                .tag(0)
            
            FavouriteView()
                .tabItem {
                    Image(systemName: selectedTab == 1 ? "heart.fill" : "heart")
//                    Image(systemName: selectedTab == 1 ? "star.fill" : "star")
                        .environment(\.symbolVariants, selectedTab == 1 ? .fill : .none)
                    Text("Favourite")
                }
                .onAppear { selectedTab = 1 }
                .tag(1)
            
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
                .onAppear { selectedTab = 2 }
                .tag(2)
            }
        .tint(.black) // changes the TabBar Buttons color to black
    }
}

#Preview {
    QuickConvertTabView()
}

