//
//  TodoListViewItemModel.swift
//  groupDo
//
//  Created by Reuben Remy on 2/2/25.
//

import Foundation

class TodoListViewItemModel: ObservableObject {
    @Published var showingNewItemView: Bool = false
    init() {}
}
