//
//  RegisterView.swift
//  groupDo
//
//  Created by Reuben Remy on 2/2/25.
//

import SwiftUI

struct RegisterView: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        HeaderView(
            title: "Sign up",
            subtitle: "Start Planning Today",
            angle: 15,
            background: .yellow
        )
        Form {
            TextField("Full Name", text: $name)
                .textFieldStyle(DefaultTextFieldStyle())
            TextField("Email Address", text: $email)
                .textFieldStyle(DefaultTextFieldStyle())
            SecureField("Password", text: $password)
                .textFieldStyle(DefaultTextFieldStyle())
            
            Button {
                // attempt login
                #warning("Implement register logic here")
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .fill(.green)
                    Text("Register")
                        .foregroundColor(.white)
                        .bold()
                }
            }
        }
        Spacer()
    }
    
}

#Preview {
    RegisterView()
}
