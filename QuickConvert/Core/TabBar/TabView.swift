//
//  TabView.swift
//  QuickConvert
//
//  Created by Nevio Hirani on 02.10.23.
//

import SwiftUI

struct TabView: View {
    @State private var selectedTab = 0
//    @State private var isSheetPresented = false
    
    var body: some View {
        Text("Hi")
        TabView(selection: $selectedTab) {
            CategoryView()
                .tabItem {
                    Image(systemName: "bullet")
                }
                .onAppear { selectedTab = 0 }
                .tag(0)
            
            FavouriteView()
                .tabItem {
                    Image(systemName: selectedTab == 1 ? "heart.fill" : "heart")
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
            
            // MARK: Sheet Tab
//            Text("Tab 2")
//                .tabItem {
//                    Image(systemName: "2.circle")
//                    Text("Tab 2")
//                }
//                .onTapGesture {
//                    // When the second tab is tapped, present a sheet
//                    isSheetPresented.toggle()
//                }
//                .sheet(isPresented: $isSheetPresented) {
//                    // Content of the sheet
//                }
            
        }
        .tint(.black) // changes the TabBar Buttons color to black
    }
}

#Preview {
    TabView()
}
