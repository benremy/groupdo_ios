//
//  HeaderView.swift
//  groupDo
//
//  Created by Reuben Remy on 2/2/25.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let angle: Double
    let background: Color
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(background)
                .rotationEffect(Angle.degrees(angle))
            VStack {
                Text(title)
                    .font(.system(size: 50, weight: .bold, design: .monospaced))
                    .foregroundColor(.white)
                
                Text(subtitle)
                    .font(.system(size: 20, design: .monospaced))
                    .foregroundColor(.white)
            }
            .padding(.top, 50)
        }
        .frame(
            width: UIScreen.main.bounds.width * 3,
            height: 400
        )
        .offset(x: 0, y: -100)
    }
}

#Preview {
    HeaderView(
        title: "Title",
        subtitle: "Subtitle",
        angle: 0,
        background: .blue
    )
}
