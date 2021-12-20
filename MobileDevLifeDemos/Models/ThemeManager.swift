//
//  ThemeManager.swift
//  MobileDevLifeDemos
//
//  Created by Dan Ilies on 20.12.2021.
//

import Foundation
import SwiftUI

class ThemeManager: ObservableObject {
    
    static let shared = ThemeManager()
    private init() {}
    
    @Published var theme: Theme = Theme.initialTheme
    @Published var backgroundColor: Color = Theme.initialTheme.backgroundColor
    @Published var textColor: Color = Theme.initialTheme.textColor
    
    func changeTheme(theme: Theme) {
        self.theme = theme
        self.backgroundColor = theme.backgroundColor
        self.textColor = theme.textColor
    }
    
}
