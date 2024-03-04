//
//  StateView.swift
//  LearningSwiftUi
//
//  Created by Ángel Asensio on 4/3/24.
//

import SwiftUI

class UserData: ObservableObject {
    @Published var name: String = "Asensio"
    @Published var age = 31
}

struct StateView: View {
    
    @State private var value = 0
    @State private var selection: Int?
    @StateObject private var user = UserData()
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("My name is \(user.name)").font(.title3).padding()
                    Text("My age is \(user.age)").font(.title3).padding()
                }
                Button("Update data") {
                    user.name = "Peter"
                    user.age = 36
                }.padding()
                Divider()
                Text("El valor actual es \(value)").padding()
                Button("Suma 1") {
                    value += 1
                }.padding()
                NavigationLink(
                    destination: BindingView(value: $value, user: user),
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
