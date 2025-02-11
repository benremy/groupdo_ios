//
//  NewItemViewModel.swift
//  groupDo
//
//  Created by Reuben Remy on 2/2/25.
//

import Foundation

class NewItemViewModel: ObservableObject {
    @Published var title = ""
    @Published var description = ""
    @Published var dueDate = Date()
    
    init() {}
    
    func save() {
        print("\(self.title), \(self.description), \(self.dueDate)")
    }
    
    // computed value
    var canSave: Bool {
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        
        guard dueDate >= Date().addingTimeInterval(-86400) else {
            return false
        }
        
        return true
    }
}
