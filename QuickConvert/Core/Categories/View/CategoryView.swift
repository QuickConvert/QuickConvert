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
    @State private var developerIsPresented = false
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
                Section("Developer") {
                    ForEach(ListViewModel_Icon_Programmer.allCases) { option in
                        HStack {
                            ZStack {
                                Color.black
                                    .frame(width: 30, height: 30)
                                    .cornerRadius(10)
                                Image(systemName: option.imageName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 20, height: 20)
                                    .foregroundColor(.white)
                            }
                        
                            Text(option.title)
                                .font(.subheadline)
                                .fontWeight(.semibold)
                        }
                        .onTapGesture(perform: {
                            developerIsPresented.toggle()
                        })
                        .navigationDestination(isPresented: $developerIsPresented) {
                            DeveloperCategoryView()
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
