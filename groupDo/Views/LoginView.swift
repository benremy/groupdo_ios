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
                HeaderView()
                
                // login form
                Form {
                    // text fields
                    TextField("Email Address", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    SecureField("Password", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    // submit button
                    Button {
                        // attempt login
                        #warning("Implement login logic here")
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 8)
                                .fill(.blue)
                            Text("Login")
                                .foregroundColor(.white)
                                .bold()
                        }
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
