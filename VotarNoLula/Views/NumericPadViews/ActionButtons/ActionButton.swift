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
    
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            Text(title.uppercased())
                .font(.system(size: 12, weight: .semibold, design: .default))
                .foregroundColor(.black)
        })
        .frame(width: 90, height: 50, alignment: .center)
        .background(color)
    }
}
