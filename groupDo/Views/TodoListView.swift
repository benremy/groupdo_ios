//
//  TodoListView.swift
//  groupDo
//
//  Created by Reuben Remy on 2/2/25.
//

import SwiftUI

struct TodoListView: View {
    private var userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    var body: some View {
        NavigationView {
            VStack {
                
            }
            .navigationTitle("To do List")
            .toolbar {
                Button {
                    // Action
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

#Preview {
    TodoListView(userId: "0")
}
