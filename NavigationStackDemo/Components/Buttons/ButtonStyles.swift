//
//  ButtonStyles.swift
//  NavigationStackDemo
//
//  Created by Juvin R on 11/16/24.
//

import SwiftUI

struct CustomButtonStyle: ButtonStyle {
    var foregroundStyle: Color = .white
    var background: Color = .blue
    var cornerRadius: CGFloat = 10
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.headline)
            .foregroundStyle(foregroundStyle)
            .padding()
            .frame(maxWidth: .infinity)
            .background(background)
            .clipShape(.rect(cornerRadius: cornerRadius))
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
            .animation(.easeInOut(duration: 0.3), value: configuration.isPressed)
    }
}

extension ButtonStyle where Self == CustomButtonStyle {
    static func custom(foregroundStyle: Color = .white, background: Color = .blue, cornerRadius: CGFloat = 10) -> Self {
        CustomButtonStyle(foregroundStyle: foregroundStyle, background: background, cornerRadius: cornerRadius)
    }
}
