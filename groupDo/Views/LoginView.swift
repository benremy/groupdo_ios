//
//  LoginView.swift
//  groupDo
//
//  Created by Reuben Remy on 2/2/25.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
            VStack {
                // header
                HeaderView(
                    title: "Group Do",
                    subtitle: "Do things together",
                    angle: 15,
                    background: .orange
                )
                
                // login form
                Form {
                    // text fields
                    TextField("Email Address", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                    
                    SecureField("Password", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    // submit button
                    GDButton(title: "Log in", background: .green) {
                        // attempt login
                    }
                }
                
                // create account
                VStack {
                    Text("Don't have an account?")
                    NavigationLink("Sign Up", destination: RegisterView())
                }
                .padding(.bottom, 25)
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
