//
//  CategoryView.swift
//  QuickConvert
//
//  Created by Nevio Hirani on 02.10.23.
//

import SwiftUI

struct CategoryView: View {
    var body: some View {
        NavigationStack {
            Text("Hi")
            .navigationTitle("Categories")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    CategoryView()
}
