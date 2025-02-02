//
//  GDButton.swift
//  groupDo
//
//  Created by Reuben Remy on 2/2/25.
//

import SwiftUI

struct GDButton: View {
    let title: String
    let background: Color
    let action: () -> Void // closure that takes no arguments -> look into fundamentals
    
    var body: some View {
        Button {
            action() // call the action closure
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 8)
                    .fill(background)
                    .frame(width: UIScreen.main.bounds.width, height: 50)
                Text(title)
                    .foregroundColor(.white)
                    .bold()
            }
        }
    }
}

#Preview {
    GDButton(
        title: "Button Title",
        background: .gray ) {
            // Action
    }
    
}
