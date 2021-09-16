//
//  CandidateNumberRectangle.swift
//  VotarNoLula
//
//  Created by Douglas Silva on 16/09/21.
//

import SwiftUI

struct CandidateNumberRectangle: View {
    var number: String
    
    var body: some View {
        Text(number)
            .padding(14)
            .border(Color.black, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
    }
}
