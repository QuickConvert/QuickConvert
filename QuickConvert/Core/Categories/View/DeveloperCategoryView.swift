//
//  DeveloperCategoryView.swift
//  QuickConvert
//
//  Created by Nevio Hirani on 04.10.23.
//

import SwiftUI

struct DeveloperCategoryView: View {
    var body: some View {
        NavigationStack {
            List {
                Section("Developer") {
                    ForEach(DeveloperListViewModel.allCases) { option in
                        VStack(alignment: .leading) {
                            HStack {
                                Image(systemName: option.imageName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 24, height: 24)
                                    .foregroundColor(.black)
                                
                                Text(option.title)
                                    .font(.subheadline)
                            }
                            HStack {
                                Image(systemName: "")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 24, height: 24)
                                    .foregroundColor(.black)
                                
                                Text(option.description)
                                    .frame(alignment: .leading)
                                    .font(.caption)
                                    .fontWeight(.semibold)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Developer")
            .navigationBarTitleDisplayMode(.automatic)
        }
    }
}

#Preview {
    DeveloperCategoryView()
}
