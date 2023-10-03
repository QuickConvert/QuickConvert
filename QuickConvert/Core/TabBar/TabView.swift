//
//  TabView.swift
//  QuickConvert
//
//  Created by Nevio Hirani on 02.10.23.
//

import SwiftUI

struct TabView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            CategoryView()
                .tabItem {
                    Image(systemName: "bullet")
                }
                .onAppear { selectedTab = 0 }
                .tag(0)
            
            FavouriteView()
                .tabItem {
                    Image(systemName: selectedTab == 1 ? "heart.fill" : "heart") // maybe change icon to "star.fill" or "star"
//                    Image(systemName: selectedTab == 1 ? "star.fill" : "star")
                        .environment(\.symbolVariants, selectedTab == 1 ? .fill : .none)
                }
                .onAppear { selectedTab = 1 }
                .tag(1)
            
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
                .onAppear { selectedTab = 2 }
                .tag(2)
        }
        .tint(.black) // Changes the color of the selected TabBar Item
    }
}

#Preview {
    TabView()
}
