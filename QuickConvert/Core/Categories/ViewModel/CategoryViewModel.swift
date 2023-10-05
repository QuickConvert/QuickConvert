//
//  CategoryViewModel.swift
//  QuickConvert
//
//  Created by Nevio Hirani on 05.10.23.
//

import Foundation
import SwiftUI

struct CategoryViewModel: Hashable, Identifiable { // codable protocol
    var id: Int
    var name: String
    var icon: String
    var isFavorite: Bool
    
    var category: Category
    enum Category_Basic: String, CaseIterable, Codable { // FIXME: Add String protocol
        case length = "Length"
        case temperature = "Temparature"
        case area = "Area"
        case weight = "Weight"
        case time = "Time"
        case volume = "Volume"
        case algebra = "Algebra" // math: square root, decimals, percent, fracture (1/4, ...)
        
        var imageName: String {
            switch self {
            case .length: return "ruler"
            case .temperature: return "thermometer.medium"
            case .area: return "viewfinder" // squareshape.split.2x2, square.split.bottomrightquarter
            case .weight: return "scalemass.fill"
            case .time: return "clock"
            case .volume: return "shippingbox"
            case .algebra: return "x.squareroot"
            }
        }
    }
    enum Category_Advanced: String, CaseIterable, Codable {
        case trigonometry = "Trigonometry"
        case electrical = "Electric"// electrical stuff like ohm, V, w, ...
        case energy = "Energy"
        case force = "Force"
        case currency = "Currency"
        case fuel_consumption = "Fuel consumption"
        case speed = "Speed"
        case frequency = "Frequency"
        case surface_angle = "Surface angle"
        case pressure = "Pressure"
        case data_transfer_rate = "Data transfer rate"
        case data = "Data size"
        
        var imageName: String {
            switch self {
            case .trigonometry: return "triangle.fill"
            case .electrical: return "power" // "powercord.fill"
            case .energy: return "bolt.fill" // "bolt"
            case .force: return "hammer.fill"
            case .currency: return "dollarsign.square"
            case .fuel_consumption: return "fuelpump.fill"
            case .speed: return "gauge.with.dots.needle.bottom.0percent"
            case .frequency: return "waveform.path.ecg" // waveform.path.ecg.rectangle
            case .surface_angle: return "angle"
            case .pressure: return "barometer"
            case .data_transfer_rate: return "wifi"
            case .data: return "doc.zipper"
            }
        }
    }
    
    enum Category_Developer: String, CaseIterable, Codable {
        case developer
        
        var imageName: String {
            switch self {
            case .developer: "hammer.fill"
            }
        }
    }
}
