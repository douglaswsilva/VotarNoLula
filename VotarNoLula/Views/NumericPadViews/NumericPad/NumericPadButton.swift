//
//  NumericPadButton.swift
//  VotarNoLula
//
//  Created by Douglas Silva on 16/09/21.
//

import SwiftUI

struct NumericPadButton: View {
    let number: Int
    let action: () -> ()
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            Text("\(number)")
                .foregroundColor(Color(#colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)))
        })
        .disabled(number != 1 && number != 3)
        .frame(width: 90, height: 65, alignment: .center)
    }
}
