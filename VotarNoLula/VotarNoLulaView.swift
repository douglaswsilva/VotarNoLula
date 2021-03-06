//
//  VotarNoLulaView.swift
//  VotarNoLula
//
//  Created by Douglas Silva on 16/09/21.
//

import SwiftUI

struct VotarNoLulaView: View {
    
    @StateObject var model = VotarNoLulaViewModel()
    
    var body: some View {
        if model.moveToNextPage {
            FimView()
        } else {
            HStack {
                CandidateView(model: model)
                Spacer()
                VStack {
                    NumericPadView(model: model)
                    Spacer()
                    ActionButtonsView(model: model)
                }
                .background(Color(#colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1)))
                .padding(.vertical, 16)
            }
        }
    }
}

struct FimView: View {
    var body: some View {
        Text("FIM")
            .font(.system(size: 120))
            .foregroundColor(Color(#colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1)))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        VotarNoLulaView()
            .previewLayout(.fixed(width: 812, height: 375))
    }
}
