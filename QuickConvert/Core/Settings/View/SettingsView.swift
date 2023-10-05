//
//  SettingsView.swift
//  QuickConvert
//
//  Created by Nevio Hirani on 05.10.23.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationStack {
            List {
                Section("Settings") {
                    ForEach(SettingsOptionViewModel.allCases, id: \.self) { option in
                        HStack {
//                            ZStack {
//                                Rectangle()
//                                    .frame(width: 30, height: 30)
//                                    .foregroundColor(option.backgroundColor)
//                                    .cornerRadius(5)
//                                
//                                Image(systemName: option.imageName)
//                                    .resizable()
//                                    .scaledToFit()
//                                    .frame(width: 24, height: 24, alignment: .center)
//                                    .foregroundColor(.white)
//                            }
                            Image(systemName: option.imageName)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 24, height: 24)
                            
                            Text(option.title)
                                .font(.subheadline)
                        }
                        .tint(.black)
                    }
                    
                }
            }
            .navigationTitle("Settings")
            .navigationBarBackButtonHidden()
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

#Preview {
    SettingsView()
}
