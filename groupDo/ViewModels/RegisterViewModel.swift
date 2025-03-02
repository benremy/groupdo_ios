//
//  RegisterViewModel.swift
//  groupDo
//
//  Created by Reuben Remy on 2/2/25.
//

import Foundation

class RegisterViewModel: ObservableObject {
    @Published var name = ""
    @Published var email = ""
    @Published var password = ""
    
    init() {}
    
    func register() {
        guard validate() else {
            return
        }
        
        print("registering user...")
    }
    
    private func insertUserRecord(id: String) {
        let newUser = User(
            id: id,
            name: name,
            email: email,
            joined: Date().timeIntervalSince1970
        )
        
        // insert into db
        print(newUser.id)
    }
    
    private func validate() -> Bool {
        guard !name.trimmingCharacters(in: .whitespaces).isEmpty,
              !email.trimmingCharacters(in: .whitespaces).isEmpty,
        !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        
        guard email.contains(("@")) && email.contains((".")) else {
            return false
        }
        
        guard password.count >= 6 else {
            return false
        }
        
        return true
    }
}
