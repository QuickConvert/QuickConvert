//
//  DeveloperListViewModel.swift
//  QuickConvert
//
//  Created by Nevio Hirani on 04.10.23.
//

import Foundation
import SwiftUI

// MARK: - Programmer settings
enum DeveloperListViewModel: Int, CaseIterable, Identifiable {
    case ascii
    case other
    
    var title: String {
        switch self {
        case .ascii: return "Ascii convertion"
        case .other: return "Other"
        }
    }
    
    var description: String {
        switch self {
        case .ascii: return "Convert a value to ascii symbols"
        case .other: return "Do other conversions like Hex to decimal, ..."
        }
    }
    
    var imageName: String {
        switch self {
        case .ascii: return "doc.plaintext"
        case .other: return "ellipsis.circle.fill"
        }
    }
    var id: Int { return self.rawValue }
}

