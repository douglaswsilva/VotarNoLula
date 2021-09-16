//
//  NumericPadView.swift
//  VotarNoLula
//
//  Created by Douglas Silva on 16/09/21.
//

import SwiftUI

struct NumericPadView: View {
    var body: some View {
        VStack {
            NumericPadRow(initial: 1, end: 3)
            NumericPadRow(initial: 4, end: 6)
            NumericPadRow(initial: 7, end: 9)
            NumericPadButton(number: 0)
        }
    }
}
