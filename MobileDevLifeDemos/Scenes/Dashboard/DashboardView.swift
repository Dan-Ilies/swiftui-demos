//
//  DashboardView.swift
//  MobileDevLifeDemos
//
//  Created by Dan Ilies on 20.12.2021.
//

import SwiftUI

struct DashboardView: View {
    
    @StateObject var themeManager: ThemeManager
    
    var body: some View {
        VStack(spacing: 30) {
            Text("Wanna change the theme? \n\n👇")
                .foregroundColor(themeManager.textColor)
                .font(.system(size: 20, weight: .bold))
                .multilineTextAlignment(.center)
            
            HStack {
                CircleButton(theme: .dark, themeManager: self.themeManager)
                CircleButton(theme: .light, themeManager: self.themeManager)
                CircleButton(theme: .blue, themeManager: self.themeManager)
                CircleButton(theme: .yellow, themeManager: self.themeManager)
                CircleButton(theme: .red, themeManager: self.themeManager)
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(themeManager.backgroundColor.edgesIgnoringSafeArea(.all))
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView(themeManager: ThemeManager.shared)
    }
}

struct CircleButton: View {
    
    var theme: Theme
    @StateObject var themeManager: ThemeManager
    
    var body: some View {
        return Button {
            ThemeManager.shared.changeTheme(theme: theme)
        } label: {
            Circle()
                .foregroundColor(theme.backgroundColor)
                .frame(width: 50, height: 50)
                .shadow(color: .black, radius: 5)
                .overlay(selectionCircle)
        }
    }
    
    var selectionCircle: some View {
        if theme == themeManager.theme {
            return AnyView(Circle().stroke(Color.purple, lineWidth: 3))
        }
        else {
            return AnyView(EmptyView())
        }
    }
    
}
