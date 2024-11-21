//
//  FirstView.swift
//  NavigationStackDemo
//
//  Created by Juvin R on 11/18/24.
//

import SwiftUI

struct FirstView: View {
    
    @Environment(NavigationRouter.self) var navigationRouter
    
    var body: some View {
        ZStack {
            Color.blue.opacity(0.3)
                .ignoresSafeArea()
            
            Text("First View")
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            VStack {
                Spacer()
                
                HStack {
                    Button("Back") {
                        navigationRouter.pop()
                    }
                    .buttonStyle(.custom(background: .gray))
                    
                    Button("Next") {
                        navigationRouter.push(.SecondView)
                    }
                    .buttonStyle(.custom())
                }
                .padding()
            }
        }
    }
}

#Preview {
    FirstView()
        .environment(NavigationRouter())
}
