//
//  CandidateNumbers.swift
//  VotarNoLula
//
//  Created by Douglas Silva on 16/09/21.
//

import SwiftUI

struct CandidateNumbers: View {
    @Binding var numbers: [Int]
    
    var body: some View {
        HStack {
            CandidateNumberRectangle(number: makeFirstValue())
            CandidateNumberRectangle(number: makeSecondValue())
        }
        .background(Color.white)
    }
    
    private func makeFirstValue() -> String {
        if numbers.count > 0 {
            return "\(numbers[0])"
        } else {
            return " "
        }
    }
    
    private func makeSecondValue() -> String {
        if numbers.count > 1 {
            return "\(numbers[1])"
        } else {
            return " "
        }
    }
}
