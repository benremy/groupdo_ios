//
//  TodoListView.swift
//  groupDo
//
//  Created by Reuben Remy on 2/2/25.
//

import SwiftUI

struct TodoListView: View {
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
    TodoListView()
}
