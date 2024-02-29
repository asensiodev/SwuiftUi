//
//  ContentView.swift
//  LearningSwiftUi
//
//  Created by Ángel Asensio on 27/2/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/,
               spacing: 12) {
            Spacer()
            Text("Hello! Welcome to the learning Swift Ui App!")
                .font(.title)
                .foregroundColor(Color.blue)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 7.0)
            Spacer()
            HStack {
                Text("Have fun!").foregroundColor(Color.blue).padding()
                Image(systemName: "apple.terminal")
                    .foregroundColor(Color.blue)
                    .padding(.bottom, 3.0)
            }
            Spacer()
        }.padding()
    }
}

#Preview {
    ContentView()
}

