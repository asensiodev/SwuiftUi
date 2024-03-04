//
//  StateView.swift
//  LearningSwiftUi
//
//  Created by Ángel Asensio on 4/3/24.
//

import SwiftUI

struct StateView: View {
    
    @State private var value = 0
    @State private var selection: Int?
    
    var body: some View {
        NavigationView {
            VStack {
                Text("El valor actual es \(value)").padding()
                Button("Suma 1") {
                    value += 1
                }.padding()
                NavigationLink(
                    destination: BindingView(value: $value),
                    tag: 1,
                    selection: $selection) {
                        Button("Ir a Binding View") {
                            selection = 1
                        }
                    }
            }
        }.navigationTitle("State View")
    }
}

#Preview {
    StateView()
}
