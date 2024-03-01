//
//  ListView.swift
//  LearningSwiftUi
//
//  Created by Ángel Asensio on 1/3/24.
//

import SwiftUI

private let programmers = [Programmer(id: 1, name: "Peter Parker",
                                      languanges: "Kotlin, Swift",
                                      avatar:Image(systemName: "person.fill"),
                                      isFavorite: false),
                           Programmer(id: 2, name: "Robbie Lawler",
                                      languanges: "Kotlin, Dart",
                                      avatar:Image(systemName: "person.fill"),
                                      isFavorite: true),
                           Programmer(id: 3, name: "Martin Scorsese",
                                      languanges: "Swift",
                                      avatar:Image(systemName: "person.fill"),
                                      isFavorite: false),
                           Programmer(id: 4, name: "Lluis Llach",
                                      languanges: "Kotlin, Java",
                                      avatar:Image(systemName: "person.fill"),
                                      isFavorite: false),
                           Programmer(id: 5, name: "Glenn Danzig",
                                      languanges: "Kotlin, Swift, Java",
                                      avatar:Image(systemName: "person.fill"),
                                      isFavorite: true),
                           Programmer(id: 6, name: "John Doe",
                                      languanges: "Ruby, Go",
                                      avatar:Image(systemName: "person.fill"),
                                      isFavorite: true),
                           Programmer(id: 7, name: "Christoph Lee",
                                      languanges: "Kotlin, Python",
                                      avatar:Image(systemName: "person.fill"),
                                      isFavorite: true)]



struct ListView: View {
    
    // State
    @State private var showFavorites = false
    
    // Calculated variable
    private var filteredProgrammers: [Programmer] {
        return programmers.filter { programmer in
            return !showFavorites || programmer.isFavorite
        }
    }
    var body: some View {
        VStack {
            Toggle(isOn: $showFavorites) {
                Text("Show favorites")
            }.padding()
            NavigationView {
                List (filteredProgrammers, id: \.id) { programmer in
                    NavigationLink(destination: ListDetailView(programmer: programmer)) {
                        RowView(programmer: programmer)
                    }
                }
                .listStyle(PlainListStyle())
                .navigationTitle("Programadores")
            }
        }
        
    }
}

#Preview {
    ListView()
}
