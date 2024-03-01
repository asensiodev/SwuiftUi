//
//  ListView.swift
//  LearningSwiftUi
//
//  Created by Ángel Asensio on 1/3/24.
//

import SwiftUI

private let programmers = [Programmer(id: 1, name: "Peter Parker",languanges:                                         "Kotlin, Swift",
                                      avatar:Image(systemName: "person.fill")),
                           Programmer(id: 2, name: "Robbie Lawler",
                                      languanges: "Kotlin, Dart",
                                      avatar:Image(systemName: "person.fill")),
                           Programmer(id: 3, name: "Martin Scorsese",
                                      languanges: "Swift",
                                      avatar:Image(systemName: "person.fill")),
                           Programmer(id: 4, name: "Lluis Llach",
                                      languanges: "Kotlin, Java",
                                      avatar:Image(systemName: "person.fill")),
                           Programmer(id: 5, name: "Obama Care",
                                      languanges: "Kotlin, Python",
                                      avatar:Image(systemName: "person.fill"))]



struct ListView: View {
    var body: some View {
        VStack {
            Text("Programmers").padding(10)
                .font(.title)
                .foregroundColor(Color.blue)
            List (programmers, id: \.id) { programmer in
                RowView(programmer: programmer)
            }
        }
    }
}

#Preview {
    ListView()
}
