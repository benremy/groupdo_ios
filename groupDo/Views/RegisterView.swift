//
//  RegisterView.swift
//  groupDo
//
//  Created by Reuben Remy on 2/2/25.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        HeaderView(
            title: "Sign up",
            subtitle: "Start Planning Today",
            angle: 15,
            background: .yellow
        )
        Spacer()
    }
    
}

#Preview {
    RegisterView()
}
