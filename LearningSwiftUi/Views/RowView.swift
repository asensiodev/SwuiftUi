//
//  RowView.swift
//  LearningSwiftUi
//
//  Created by Ángel Asensio on 1/3/24.
//

import SwiftUI

struct RowView: View {
    
    var programmer: Programmer
    
    var body: some View {
        HStack {
            programmer.avatar.resizable().frame(width: 40, height: 40)
                .padding(10)
            VStack (alignment: .leading) {
                Text(programmer.name)
                    .font(.title2)
                    .lineLimit(1)
                    .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                    .frame(width: 250, alignment: .leading)
                Text(programmer.languanges)
                    .font(.subheadline)
                    .multilineTextAlignment(.leading)
                    .lineLimit(1)
                    .foregroundColor(Color.blue)
                    .offset(CGSize(width: 3, height: 0))
                    .frame(width: 200, alignment: .leading)
            }
            Spacer()
//            if (programmer.isFavorite) {
//                Image(systemName: "star.fill").foregroundColor(.yellow)
//            }
            // Fix to keep avatar in same position for favorite and no favorite item
            Image(systemName: "star.fill").foregroundColor(.blue)
                .opacity(programmer.isFavorite ? 1 : 0)
        }
    }
}

#Preview {
    RowView(programmer: Programmer(id: 1, name: "Peter Parker",
                                   languanges: "Kotlin, Swift",
                                   avatar:Image(systemName: "person.fill"),
                                   isFavorite: true)
    )
}
