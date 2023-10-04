//
//  CategoryView.swift
//  QuickConvert
//
//  Created by Nevio Hirani on 02.10.23.
//

import SwiftUI

/// A List that shows all the categories:
/// The list is differentiated by two topics -> 1. Basic operations, 2. advanced operations
///
/// TODO:
/// - The list items should be clickable
/// - They should have actions: Favourite, unfavourite
///
/// The List Items are defined in the ListViewModel as an enum called `ListViewModel`.
struct CategoryView: View {
    var body: some View {
        NavigationStack {
            List {
                Section("Basic operations") {
                    ForEach(ListViewModel.allCases) { option in
                        HStack {
                            Image(systemName: option.imageName)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 24, height: 24)
                                .foregroundColor(.black)
                            
                            Text(option.title)
                                .font(.subheadline)
                        }
                    }
                }
                
                Section("Advanced operations") {
                    ForEach(ListViewModel_Advanced.allCases) { option in
                        HStack {
                            Image(systemName: option.imageName)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 24, height: 24)
                                .foregroundColor(.black)
                            
                            Text(option.title)
                                .font(.subheadline)
                        }
                    }
                }
            }
            .navigationTitle("Categories")
            .navigationBarTitleDisplayMode(.automatic)
        }
    }
}

#Preview {
    CategoryView()
}
