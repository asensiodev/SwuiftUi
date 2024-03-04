//
//  StateView.swift
//  LearningSwiftUi
//
//  Created by Ángel Asensio on 4/3/24.
//

import SwiftUI

struct StateView: View {
    
    @State private var value = 0
    
    var body: some View {
        VStack {
            Text("El valor actual es \(value)").padding()
            Button("Suma 1") {
                value += 1
            }
        }
    }
}

#Preview {
    StateView()
}
