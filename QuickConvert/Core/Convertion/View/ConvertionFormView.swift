//
//  ConvertionFormView.swift
//  QuickConvert
//
//  Created by Nevio Hirani on 04.10.23.
//

import SwiftUI

/// A View that is responible for the convertion
///
/// TODO:
/// - Add a little magic 🪄
/// - Create two text fields that require input -> value1, value 2
/// - Create a Picker were you can choose between many options
/// - Create actions: Copy result, Favourite result, ...
struct ConvertionFormView: View {
    @State private var inputValue = ""
    @State private var outputValue = ""
    @State private var selectedUnit = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            // MARK: - ConvertionView
            VStack {
                // MARK: Input
                TextField("Value", text: $inputValue)
                    .modifier(IGTextFieldModifier())
            }
            
            // MARK: - Actions
            List {
                Section("Actions") {
                    ForEach(ConvertionListViewModel.allCases, id: \.self) { option in
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
            
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "chevron.left")
                    }
                    .tint(.black)
                }
            }
            
            .navigationTitle("Convertion")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden()
        }
    }
}

#Preview {
    ConvertionFormView()
}
