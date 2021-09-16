//
//  VotarNoLulaViewModel.swift
//  VotarNoLula
//
//  Created by Douglas Silva on 16/09/21.
//

import Foundation
import Combine

class VotarNoLulaViewModel: ObservableObject {
    @Published var number: [Int] = []
    
    func appendNumber(_ int: Int) {
        number.append(int)
        print(number)
    }
    
    func branco() {
        
    }
    
    func corrige() {
        number = []
    }
    
    func confirma() {
        print("Ganhou!")
    }
}
