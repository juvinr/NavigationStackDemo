//
//  ThirdView.swift
//  NavigationStackDemo
//
//  Created by Juvin R on 11/18/24.
//

import SwiftUI

struct ThirdView: View {
    
    @Environment(NavigationRouter.self) var navigationRouter
    
    var body: some View {
        ZStack {
            Color.yellow.opacity(0.3)
                .ignoresSafeArea()
            
            Text("Third View")
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            VStack {
                Spacer()
                
                HStack {
                    Button("Back") {
                        navigationRouter.pop()
                    }
                    .buttonStyle(.custom(background: .gray))
                    
                    Button("Home") {
                        navigationRouter.popToRoot()
                    }
                    .buttonStyle(.custom())
                }
                .padding()
            }
        }
    }
}

#Preview {
    ThirdView()
        .environment(NavigationRouter())
}
