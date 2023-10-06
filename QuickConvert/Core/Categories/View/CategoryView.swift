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
/// **TODO:**
/// - The list items should be clickable (❌) ⚠️
/// - They should have actions: Favourite, unfavourite -> `@State private var isFavourite: Bool = false` ✅
/// - Fix is Favourite action ⚠️
///
/// The List Items are defined in the ListViewModel as an enum called `ListViewModel`.
struct CategoryView: View {
    /// State proprtties that keeps track of the current state of what is displayed
    @State private var developerIsPresented = false
    @State private var convertionView = false
    @State private var settingsViewIsShown = false
    @State private var moreSheetIsShown = false
    @State private var isFavourite = false
    var body: some View {
        NavigationStack {
            List {
//                #warning("Fix id's of the items")
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
                            
                            Spacer()
                            
                            // FIXME: Feature func
                            Button {
                                isFavourite.toggle()
                            } label: {
                                Image(systemName: isFavourite ? "heart.fill" : "heart")
                            }
                            .tint(.black)
                            
                        }
                        
                        // MARK: - Swipe Actions
                        .swipeActions(edge: .trailing) {
                            /// Allows using swipe actions:
                            /// Favourite/unfavourite: right edge
                            /// ...
                            Button {
                                isFavourite.toggle()
                                print("DEBUG: added \(option.title) to your favourites")
                                print("\(option.title) is a favourite: \(isFavourite)")
                            } label: {
                                Label("Favourite", systemImage: isFavourite ? "heart.slash" : "heart.fill")
                            }
                            .tint(.red)
                            
                            Button {
                                print("more")
//                                moreSheetIsShown.toggle()
                            } label: {
                                Label("More", systemImage: "ellipsis")
                                    .symbolVariant(.circle.fill)
                            }
//                            .onTapGesture(perform: {
//                                moreSheetIsShown.toggle()
//                            })
//                            .sheet(isPresented: $moreSheetIsShown) {
//                                MoreView()
//                            }
                            
                            .tint(Color(.systemGray2))
                            
                        }
                        
                        // MARK: - ConvertionView
                        /// If the user tap's on the icon the ConvertionView will be displayed
                        ///
                        /// TODO:
                        /// - Decide to use either .sheet or a new view
                        .onTapGesture(perform: {
                            convertionView.toggle()
                        })
                        .navigationDestination(isPresented: $convertionView) { // FIXME: Change the `.navigationDestination` to `.sheet` if needed
                            ConvertionFormView()
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
                        // TODO: Create .sheet or link it to the convertion view
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
                            
                            // MARK: - Custom Chevron button
                            Spacer()
                            
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray)
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
            
            // MARK: - Toolbar
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                        Image(systemName: "gearshape")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25)
                    .tint(.black)
                    
                    .onTapGesture(perform: {
                        settingsViewIsShown.toggle()
                    })
                    .sheet(isPresented: $settingsViewIsShown) {
                        SettingsView()
                            .presentationDragIndicator(.visible)
                            .interactiveDismissDisabled(false)
                    }
                }
            }
        }
    }
}

#Preview {
    CategoryView()
}
