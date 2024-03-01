//
//  ImageView.swift
//  LearningSwiftUi
//
//  Created by Ángel Asensio on 29/2/24.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        //Image("myIcon").resizable().scaledToFit()
        VStack {
            Image("myIcon").resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .background(Color(Color.red))
                .overlay(Circle().stroke(Color(Color.blue), lineWidth: 4))
                .padding(50)
            HStack {
                Text("Hello doggy!")
                    .font(.largeTitle)
                    .foregroundColor(Color.orange)
                    .padding()
            }
        }.background(Color(Color.red))
    }
}

#Preview {
    ImageView()
}
