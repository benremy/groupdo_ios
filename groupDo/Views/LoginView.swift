//
//  LoginView.swift
//  groupDo
//
//  Created by Reuben Remy on 2/2/25.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack {
            // header
            ZStack {
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(Color.pink)
                    .rotationEffect(Angle.degrees(15))
                VStack {
                    Text("groupDo")
                        .font(.system(size: 50, weight: .bold, design: .monospaced))
                        .foregroundColor(.white)
                }
                .padding(.top, 50)
            }
            .frame(
                width: UIScreen.main.bounds.width * 3,
                height: 300
            )
            .offset(x: 0, y: -100)
            
            // login form
            
            // create account
            Spacer()
        }
    }
}

#Preview {
    LoginView()
}
