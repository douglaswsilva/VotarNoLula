//
//  NumericPadView.swift
//  VotarNoLula
//
//  Created by Douglas Silva on 16/09/21.
//

import SwiftUI

struct NumericPadView: View {
    @ObservedObject var model: VotarNoLulaViewModel
    
    var body: some View {
        VStack {
            NumericPadRow(initial: 1, end: 3, model: model)
            NumericPadRow(initial: 4, end: 6, model: model)
            NumericPadRow(initial: 7, end: 9, model: model)
            NumericPadButton(number: 0, action: { model.appendNumber(0) })
        }
    }
}
