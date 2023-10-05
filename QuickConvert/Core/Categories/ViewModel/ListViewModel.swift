//
//  ListViewModel.swift
//  QuickConvert
//
//  Created by Nevio Hirani on 03.10.23.
//

import Foundation
import SwiftUI

// MARK: - Basic Operations
enum ListViewModel: Int, CaseIterable, Identifiable, Hashable, Codable {
    case length
    case temperature
    case area
    case weight
    case time
    case volume
    case algebra // math: square root, decimals, percent, fracture (1/4, ...)
    
    var title: String {
        switch self {
        case .length: return "Length"
        case .temperature: return "Temperature"
        case .area: return "Area"
        case .weight: return "Weight"
        case .time: return "Time"
        case .volume: return "Volume"
        case .algebra: return "Algebra"
        }
    }
    
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
    var id: Int { return self.rawValue }
}

// MARK: - Advanced operations
enum ListViewModel_Advanced: Int, CaseIterable, Identifiable, Hashable, Codable {
    case trigonometry
    case electrical // electrical stuff like ohm, V, w, ...
    case energy
    case force
    case currency
    case fuel_consumption
    case speed
    case frequency
    case surface_angle
    case pressure
    case data_transfer_rate
    case data
    
    var title: String {
        switch self {
        case .trigonometry: return "Trigonometry"
        case .electrical: return "Electric"
        case .energy: return "Energy"
        case .force: return "Force"
        case .currency: return "Currency"
        case .fuel_consumption: return "Fuel consumption"
        case .speed: return "Speed"
        case .frequency: return "Frequency"
        case .surface_angle: return "Surface angle"
        case .pressure: return "Pressure"
        case .data_transfer_rate: return "Data transfer rate"
        case .data: return "Data size"
        }
    }
    
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
    var id: Int { return self.rawValue }
}

// MARK: - Programmer List Icon
enum ListViewModel_Icon_Programmer: Int, CaseIterable, Identifiable, Hashable, Codable {
    case developer
    
    var title: String {
        switch self {
        case .developer: "Developer conversions"
        }
    }
    
    var imageName: String {
        switch self {
        case .developer: "hammer.fill"
        }
    }
    var id: Int { return self.rawValue }
}
