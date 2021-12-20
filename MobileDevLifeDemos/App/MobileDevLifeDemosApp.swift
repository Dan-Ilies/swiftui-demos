//
//  MobileDevLifeDemosApp.swift
//  MobileDevLifeDemos
//
//  Created by Dan Ilies on 20.12.2021.
//

import SwiftUI

@main
struct MobileDevLifeDemosApp: App {
    var body: some Scene {
        WindowGroup {
            let welcomeViewModel = WelcomeViewModel()
            WelcomeView(viewModel: welcomeViewModel, themeManager: ThemeManager.shared)
        }
    }
}
