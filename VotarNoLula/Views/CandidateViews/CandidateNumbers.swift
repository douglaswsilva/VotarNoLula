//
//  CandidateNumbers.swift
//  VotarNoLula
//
//  Created by Douglas Silva on 16/09/21.
//

import SwiftUI

struct CandidateNumbers: View {
    var body: some View {
        HStack {
            CandidateNumberRectangle()
            CandidateNumberRectangle()
        }
        .background(Color.white)
    }
}
