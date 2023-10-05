//
//  SettingsOptionViewModel.swift
//  QuickConvert
//
//  Created by Nevio Hirani on 05.10.23.
//

import Foundation
import SwiftUI

enum SettingsOptionViewModel: Int, CaseIterable, Identifiable {
    case darkMode
    case measurement_system
    case general
    case accessibility

    var title: String {
        switch self {
        case .darkMode: return "Dark mode"
        case .measurement_system: return "Measurement System"
        case .general: return "General"
        case .accessibility: return "Accessibility"
        }
    }
    
    var imageName: String {
        switch self {
        case .darkMode: return "moon.stars.fill"
        case .measurement_system: return "ruler"
        case .general: return "gear"
        case .accessibility: return "person.circle.fill"
        }
    }
    
    var backgroundColor: Color {
        switch self {
        case .darkMode: return .black
        case .measurement_system: return .yellow
        case .general: return .gray
        case .accessibility: return .blue
        }
    }
    var id: Int { return self.rawValue }
}
