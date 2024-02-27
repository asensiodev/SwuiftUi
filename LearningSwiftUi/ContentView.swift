//
//  ContentView.swift
//  LearningSwiftUi
//
//  Created by Ángel Asensio on 27/2/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "apple.terminal")
                .foregroundColor(Color.blue)
                .padding(.bottom, 3.0)
            Text("Hello! Welcome to the learning Swift Ui App!")
                .font(.title)
                .foregroundColor(Color.blue)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 7.0)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

