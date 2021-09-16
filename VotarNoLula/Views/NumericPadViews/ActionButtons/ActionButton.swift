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
        .border(color)
        .background(
            Rectangle()
                .foregroundColor(color)
                .shadow(color: Color(UIColor(color).darker(by: 70)!), radius: 5.0, x: 5, y: 5)
        )
    }
}

extension UIColor {

    func lighter(by percentage: CGFloat = 30.0) -> UIColor? {
        return self.adjust(by: abs(percentage) )
    }

    func darker(by percentage: CGFloat = 30.0) -> UIColor? {
        return self.adjust(by: -1 * abs(percentage) )
    }

    func adjust(by percentage: CGFloat = 30.0) -> UIColor? {
        var red: CGFloat = 0, green: CGFloat = 0, blue: CGFloat = 0, alpha: CGFloat = 0
        if self.getRed(&red, green: &green, blue: &blue, alpha: &alpha) {
            return UIColor(red: min(red + percentage/100, 1.0),
                           green: min(green + percentage/100, 1.0),
                           blue: min(blue + percentage/100, 1.0),
                           alpha: alpha)
        } else {
            return nil
        }
    }
}
