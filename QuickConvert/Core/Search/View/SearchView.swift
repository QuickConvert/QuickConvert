//
//  SearchView.swift
//  QuickConvert
//
//  Created by Nevio Hirani on 02.10.23.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    @StateObject var viewModel = SearchViewModel()
    
    var body: some View {
        NavigationStack {
            LazyVStack {
                ContentUnavailableView("We're sorry but this feature isn't finished yet", systemImage: "eye.slash.fill")
            // Search func
            .searchable(text: $searchText, prompt: "Search")
            }
            .navigationTitle("Search")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    SearchView()
}
