//
//  SecondView.swift
//  NavigationStackDemo
//
//  Created by Juvin R on 11/18/24.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        ZStack {
            Color.green.opacity(0.3)
                .ignoresSafeArea()
            
            Text("Second View")
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
    SecondView()
}
