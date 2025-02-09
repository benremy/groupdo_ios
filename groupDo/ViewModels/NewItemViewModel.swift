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
        print("task saved")
    }
}
