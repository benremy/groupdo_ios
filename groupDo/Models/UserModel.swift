//
//  UserModel.swift
//  groupDo
//
//  Created by Reuben Remy on 2/2/25.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
