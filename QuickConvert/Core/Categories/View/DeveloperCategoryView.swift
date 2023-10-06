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
//                            HStack {
//                                Image(systemName: "")
//                                    .resizable()
//                                    .scaledToFit()
//                                    .frame(width: 24, height: 24)
//                                    .foregroundColor(.black)
//                                
//                                Text(option.description)
//                                    .frame(alignment: .leading)
//                                    .font(.caption)
//                                    .fontWeight(.semibold)
//                            }
                        }
                    }
                }
            }
            .navigationTitle("Developer")
            .navigationBarTitleDisplayMode(.automatic)
            
            VStack {
                Image(systemName: "eye.trianglebadge.exclamationmark.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 60)
                    .foregroundColor(.gray)
                
                Text("Some convertions are missing?")
                    .font(.title2)
                    .fontWeight(.bold)
                Text("Get in touch with us:")
                    .font(.callout)
                
                // FIXME: Create Buttons instead of Text
                Text("- [Email us](quick.convert.dev@gmail.com)")
                    .font(.caption)
                
                Text("- Create an feature request on [GitHub](https://github.com/QuickConvert/QuickConvert/issues/new?assignees=&labels=enhancement&projects=&template=feature_request.yml&title=%E2%9C%A8+%3Cfeature+title%3E)")
                    .font(.caption)
                                
            }
            .fontWeight(.semibold)
            .padding()
        }
    }
}

#Preview {
    DeveloperCategoryView()
}
