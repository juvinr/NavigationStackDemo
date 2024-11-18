//
//  FirstView.swift
//  NavigationStackDemo
//
//  Created by Juvin R on 11/18/24.
//

import SwiftUI

struct FirstView: View {
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
                        
                    }
                    .buttonStyle(.custom(background: .gray))
                    
                    Button("Next") {
                        
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
}
