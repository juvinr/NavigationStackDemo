//
//  ContentView.swift
//  NavigationStackDemo
//
//  Created by Juvin R on 11/16/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var navigationRouter = NavigationRouter()
    
    var body: some View {
        NavigationStack(path: $navigationRouter.path) {
            ZStack {
                Color.red.opacity(0.3)
                    .ignoresSafeArea()
                
                Text("Home Screen")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                VStack {
                    Spacer()
                    
                    HStack {
                        Spacer()
                        
                        Button("Next") {
                            navigationRouter.push(.FirstView)
                        }
                        .buttonStyle(.custom())
                    }
                    .padding()
                }
            }
            .navigationDestination(for: Route.self) { route in
                switch route {
                    case .FirstView:
                        FirstView()
                            .navigationBarBackButtonHidden()
                    case .SecondView:
                        SecondView()
                            .navigationBarBackButtonHidden()
                    case .ThirdView:
                        ThirdView()
                            .navigationBarBackButtonHidden()
                }
            }
        }
        .environment(navigationRouter)
    }
}

#Preview {
    ContentView()
        .environment(NavigationRouter())
}
