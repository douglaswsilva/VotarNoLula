//
//  CandidateView.swift
//  VotarNoLula
//
//  Created by Douglas Silva on 16/09/21.
//

import SwiftUI

struct CandidateView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Presidente")
                .font(.title2)
            CandidateNumbers()
            Text("Nome:")
            Text("Partido:")
            Spacer()
        }
        .font(.system(size: 14, weight: .semibold, design: .default))
        .padding()
    }
}