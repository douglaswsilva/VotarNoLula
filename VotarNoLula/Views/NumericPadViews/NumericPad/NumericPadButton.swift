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
                .padding()
        })
        .disabled(number != 1 && number != 3)
        .frame(width: 90, height: 65, alignment: .center)
        .background(
            Rectangle()
                .foregroundColor(Color(#colorLiteral(red: 0.1298420429, green: 0.1298461258, blue: 0.1298439503, alpha: 1)))
                .shadow(color: .black, radius: 5.0, x: 3, y: 3)
        )
    }
}

struct NumericPadButton_Previews: PreviewProvider {
    static var previews: some View {
        NumericPadButton(number: 4, action: {})
    }
}
