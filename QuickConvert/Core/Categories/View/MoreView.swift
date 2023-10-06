//
//  MoreView.swift
//  QuickConvert
//
//  Created by Nevio Hirani on 06.10.23.
//

import SwiftUI

struct MoreView: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                HStack {
                    ZStack {
                        Circle()
                            .foregroundColor(.gray)
                            .frame(width: 60, height: 60)
                        
                        Image(systemName: "gearshape")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.white)
                    }
                    Text("Test")
                }
            }
        }
        
    }
}

#Preview {
    MoreView()
}
