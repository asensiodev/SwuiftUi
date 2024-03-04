//
//  StateView.swift
//  LearningSwiftUi
//
//  Created by Ángel Asensio on 4/3/24.
//

import SwiftUI

struct BindingView: View {
    
    @Binding var value: Int
    
    var body: some View {
        VStack {
            Text("El valor actual es \(value)").padding()
            Button("Suma 2") {
                value += 2
            }
        }
    }
}

#Preview {
    BindingView(value: .constant(5))
}
