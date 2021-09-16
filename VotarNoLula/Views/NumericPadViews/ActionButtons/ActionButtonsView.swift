//
//  ActionButtonsView.swift
//  VotarNoLula
//
//  Created by Douglas Silva on 16/09/21.
//

import SwiftUI

struct ActionButtonsView: View {
    var body: some View {
        HStack {
            ActionButton(color: .white, title: "Branco")
            ActionButton(color: .orange, title: "Corrige")
            ActionButton(color: .green, title: "Confirma")
        }
        .padding()
    }
}
