//
//  ListDetailView.swift
//  LearningSwiftUi
//
//  Created by Ángel Asensio on 1/3/24.
//

import SwiftUI

struct ListDetailView: View {
    
    var programmer: Programmer
    @Binding var isFavorite: Bool
    
    var body: some View {
        VStack {
            programmer.avatar
                .resizable()
                .frame(width: 200, height: 200)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay(Circle().stroke(Color(Color.blue), lineWidth: 4))
                .shadow(color: Color.gray, radius: 5, x: 3, y: 3)
                .padding()
            HStack {
                Spacer()
                Text(programmer.name).font(.title).bold()
                Spacer().overlay (
                    Button {
                        isFavorite.toggle()
                    } label: {
                        if (isFavorite) {
                            Image(systemName: "star.fill").foregroundColor(.blue)
                        } else {
                            Image(systemName: "star").foregroundColor(.blue)
                        }
                    }.offset(x: -30)
                )
            }
            Text(programmer.languanges).font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
            Spacer()
        }
    }
}

#Preview {
    ListDetailView(programmer: Programmer(id: 2, name: "Robbie Lawler",
                                          languanges: "Kotlin, Dart",
                                          avatar:Image(systemName: "person.fill"),
                                          isFavorite: true),
                   isFavorite: .constant(false))
}
