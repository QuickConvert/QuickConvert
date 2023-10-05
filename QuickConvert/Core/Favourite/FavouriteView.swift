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
            ContentUnavailableView("We're sorry but this feature isn't finished yet", systemImage: "eye.slash.fill")
            
//            .navigationTitle("Favourite")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

#Preview {
    FavouriteView()
}
