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
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                VStack(alignment: .leading, spacing: 12) {
                    Text("Presidente")
                        .font(.title2)
                    CandidateNumbers(numbers: $model.number)
                    Text(model.showCandidate ? "Nome: Lula" : "Nome:")
                    Text(model.showCandidate ? "Partido: PT" : "Partido:")
                    Spacer()
                }
                .font(.system(size: 14, weight: .semibold, design: .default))
                .padding()
                
                Spacer()
                if model.showCandidate {
                    Image("lula")
                }
            }
            if model.showCandidate {
                VStack(alignment: .leading) {
                    Divider()
                    Text("""
                    Aperte a tecla
                    VERDE para CONFIRMAR
                    LARANJA para CORRIGIR
                    """)
                }
                .padding()
            }
        }
    }
}
