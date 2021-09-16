//
//  CandidateView.swift
//  VotarNoLula
//
//  Created by Douglas Silva on 16/09/21.
//

import SwiftUI

struct CandidateView: View {
    @ObservedObject var model: VotarNoLulaViewModel
    
    var body: some View {
        HStack(alignment: .top) {
            VStack(alignment: .leading, spacing: 12) {
                Text("Presidente")
                    .font(.title2)
                CandidateNumbers(numbers: $model.number)
                Text("Nome:")
                Text("Partido:")
                Spacer()
            }
            .font(.system(size: 14, weight: .semibold, design: .default))
            .padding()
            
            Spacer()
            if model.showImage {
                Image("lula")
            }
        }

    }
}
