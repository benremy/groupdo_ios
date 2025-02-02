//
//  LoginView.swift
//  groupDo
//
//  Created by Reuben Remy on 2/2/25.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewModel()
    
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
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(.red)
                    }
                    // text fields
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                    
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    // submit button
                    GDButton(title: "Log in", background: .green) {
                        viewModel.login()
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
