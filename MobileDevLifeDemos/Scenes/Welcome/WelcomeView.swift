//
//  WelcomeView.swift
//  MobileDevLifeDemos
//
//  Created by Dan Ilies on 20.12.2021.
//

import SwiftUI

struct WelcomeView: View {
    
    @StateObject var viewModel: WelcomeViewModel
    @StateObject var themeManager: ThemeManager
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Spacer()
                    Text(viewModel.message)
                        .foregroundColor(themeManager.textColor)
                        .font(.system(size: 30, weight: .bold))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(EdgeInsets.init(top: 0, leading: 30, bottom: 80, trailing: 0))
                    Spacer()
                    
                    NavigationLink(destination: DashboardView(themeManager: self.themeManager)) {
                        Text("Show Dashboard")
                            .foregroundColor(themeManager.backgroundColor)
                            .frame(width: 200)
                            .padding(.vertical, 16)
                            .background(themeManager.textColor)
                            .cornerRadius(10)
                    }
                    .padding(.bottom, 40)
                }
                .frame(maxWidth: .infinity)
                .background(themeManager.backgroundColor.edgesIgnoringSafeArea(.all))
            }
        }
    }

}

// MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView(viewModel: WelcomeViewModel(), themeManager: ThemeManager.shared)
    }
}
