//
//  NumericPadRow.swift
//  VotarNoLula
//
//  Created by Douglas Silva on 16/09/21.
//

import SwiftUI

struct NumericPadRow: View {
    let initial: Int
    let end: Int
    @ObservedObject var model: VotarNoLulaViewModel
    
    var body: some View {
        HStack {
            ForEach(initial..<end+1) { i in
                NumericPadButton(number: i, action: { model.appendNumber(i) })
            }
        }
    }
}
