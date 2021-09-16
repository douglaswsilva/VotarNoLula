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
    @Published var showImage: Bool = false
    
    var bag = Set<AnyCancellable>()
    
    init() {
        $number
            .sink { value in
                if value.count > 1 {
                    print("Lulinha!")
                    self.showImage = true
                }
            }
            .store(in: &bag)
    }
    
    func appendNumber(_ int: Int) {
        if number.count < 2 {
            number.append(int)
        }
        print(number)
    }
    
    func branco() {
        // Do nothing.
    }
    
    func corrige() {
        number = []
        showImage = false
    }
    
    func confirma() {
        print("Ganhou!")
    }
}
