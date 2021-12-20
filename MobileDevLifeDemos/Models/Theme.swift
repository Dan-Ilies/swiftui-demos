//
//  Theme.swift
//  MobileDevLifeDemos
//
//  Created by Dan Ilies on 20.12.2021.
//

import Foundation
import SwiftUI

enum Theme {
    case light
    case dark
    case blue
    case yellow
    case red
    
    var backgroundColor: Color {
        switch self {
        case .light: return Color.white
        case .dark: return Color.black.opacity(0.9)
        case .blue: return Color.blue.opacity(0.8)
        case .yellow: return Color.yellow.opacity(0.8)
        case .red: return Color.red.opacity(0.7)
        }
    }
    
    var textColor: Color {
        switch self {
        case .light: return Color.black.opacity(0.9)
        case .dark: return Color.white
        case .blue: return Color.yellow
        case .yellow: return Color.blue
        case .red: return Color.white
        }
    }
    
    static var initialTheme: Theme {
        return Theme.light
    }
}
