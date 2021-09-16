//
//  VotarNoLulaViewModel.swift
//  VotarNoLula
//
//  Created by Douglas Silva on 16/09/21.
//

import Foundation
import Combine
import AVFoundation
import UIKit

class VotarNoLulaViewModel: ObservableObject {
    @Published var number: [Int] = []
    @Published var showCandidate: Bool = false
    
    var audioPlayer: AVAudioPlayer?
    var bag = Set<AnyCancellable>()
    
    init() {
        $number
            .sink { value in
                if value.count > 1, value.first == 1, value.last == 3 {
                    print("Lulinha!")
                    self.showCandidate = true
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
        showCandidate = false
    }
    
    func confirma() {
        print("Ganhou!")
        playSound("confirma")
    }
}

extension VotarNoLulaViewModel {
    func playSound(_ assetName : String) {
        if let audioData = NSDataAsset(name: assetName)?.data  {
            do {
                audioPlayer = try AVAudioPlayer(data: audioData)
                audioPlayer?.play()
            } catch {
                print("ERROR")
            }
        } else {
            print("Nao achou")
        }
    }
}
