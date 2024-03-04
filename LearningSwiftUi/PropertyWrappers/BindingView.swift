//
//  StateView.swift
//  LearningSwiftUi
//
//  Created by Ángel Asensio on 4/3/24.
//

import SwiftUI

struct BindingView: View {
    
    @Binding var value: Int
    @ObservedObject var user: UserData
    @State private var selection: Int?
    
    var body: some View {
        VStack {
            Text("El valor actual es \(value)").padding()
            Button("Suma 2") {
                value += 2
            }.padding()
            Button("Update data") {
                user.name = "Viriato"
                user.age = 45
            }.padding()
            NavigationLink(
                destination: EnvironmentView(),
                tag: 1,
                selection: $selection
            ) {
                Button("Ir a Environment View") {
                    selection = 1
                }
            }
        }
    }
}

#Preview {
    BindingView(value: .constant(5), user: UserData())
}
