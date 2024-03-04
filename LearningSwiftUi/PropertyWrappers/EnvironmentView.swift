//
//  EnvironmentView.swift
//  LearningSwiftUi
//
//  Created by Ángel Asensio on 4/3/24.
//

import SwiftUI

struct EnvironmentView: View {
    
    @EnvironmentObject var user: UserData
    
    var body: some View {
        Text(user.name)
    }
}

#Preview {
    EnvironmentView().environmentObject(UserData())
}
