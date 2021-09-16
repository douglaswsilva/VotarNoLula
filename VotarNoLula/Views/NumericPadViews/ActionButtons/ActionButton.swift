//
//  ActionButton.swift
//  VotarNoLula
//
//  Created by Douglas Silva on 16/09/21.
//

import SwiftUI

struct ActionButton: View {
    let color: Color
    let title: String
    let action: () -> ()
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            Text(title.uppercased())
                .font(.system(size: 12, weight: .semibold, design: .default))
                .foregroundColor(.black)
        })
        .frame(width: 90, height: 50, alignment: .center)
        .background(color)
    }
}
