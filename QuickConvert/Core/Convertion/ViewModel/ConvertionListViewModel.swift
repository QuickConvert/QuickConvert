//
//  ConvertionListViewModel.swift
//  QuickConvert
//
//  Created by Nevio Hirani on 05.10.23.
//

import Foundation

enum ConvertionListViewModel: Int, CaseIterable, Identifiable {
    case copy_value
    case copy_formula
    case addToFavourite
    
    var title: String {
        switch self {
        case .copy_value: return "Copy value"
        case .copy_formula: return "Copy formular"
        case .addToFavourite: return "Add to favourite"
        }
    }
    
    var imageName: String {
        switch self {
        case .copy_value: return "square.and.arrow.up"
        case .copy_formula: return "square.and.arrow.up"
        case .addToFavourite: return "heart"
        }
    }
    var id: Int { return self.rawValue }
}
