//
//  ListDetailView.swift
//  LearningSwiftUi
//
//  Created by Ángel Asensio on 1/3/24.
//

import SwiftUI

struct ListDetailView: View {
    
    var programmer: Programmer
    
    var body: some View {
        VStack {
            programmer.avatar
                .resizable()
                .frame(width: 200, height: 200)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay(Circle().stroke(Color(Color.blue), lineWidth: 4))
                .shadow(color: Color.gray, radius: 5, x: 3, y: 3)
                .padding()
            Text(programmer.name).font(.title).bold()
            Text(programmer.languanges).font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
            Spacer()
        }
    }
}

#Preview {
    ListDetailView(programmer: Programmer(id: 2, name: "Robbie Lawler",
                                          languanges: "Kotlin, Dart",
                                          avatar:Image(systemName: "person.fill"),
                                          isFavorite: true))
}
