//
//  ConvertionFormView.swift
//  QuickConvert
//
//  Created by Nevio Hirani on 04.10.23.
//

import SwiftUI

struct ConvertionFormView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Hello, World")
                Image(systemName: "gear")
                    .foregroundColor(.blue)
            }
            
            .navigationTitle("Convertion")
            .navigationBarTitleDisplayMode(.automatic)
        }
    }
}

#Preview {
    ConvertionFormView()
}
