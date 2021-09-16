//
//  ActionButtonsView.swift
//  VotarNoLula
//
//  Created by Douglas Silva on 16/09/21.
//

import SwiftUI

struct ActionButtonsView: View {
    @ObservedObject var model: VotarNoLulaViewModel
    
    var body: some View {
        HStack {
            ActionButton(color: .white, title: "Branco", action: model.branco)
            ActionButton(color: .orange, title: "Corrige", action: model.corrige)
            ActionButton(color: .green, title: "Confirma", action: model.confirma)
                .disabled(!model.showCandidate)
        }
        .padding()
    }
}
