//
//  ContentView.swift
//  NavigationStackDemo
//
//  Created by Juvin R on 11/16/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
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
                            
                        }
                        .buttonStyle(.custom())
                    }
                    .padding()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
