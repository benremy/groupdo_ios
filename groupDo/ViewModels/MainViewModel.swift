//
//  MainViewModel.swift
//  groupDo
//
//  Created by Reuben Remy on 2/8/25.
//

import Foundation

class MainViewModel: ObservableObject {
    @Published var currentUserId: String = "implement_later"
    
    init() {
        self.currentUserId = currentUserId
    }
}
