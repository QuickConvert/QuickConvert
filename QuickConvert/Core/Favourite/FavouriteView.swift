//
//  FavouriteView.swift
//  QuickConvert
//
//  Created by Nevio Hirani on 02.10.23.
//

import SwiftUI

struct FavouriteView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Hello,World!")
                Image(systemName: "glob")
                    .foregroundColor(.blue)
            }
            .navigationTitle("Favourite")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

#Preview {
    FavouriteView()
}
