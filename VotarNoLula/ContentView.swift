//
//  ContentView.swift
//  VotarNoLula
//
//  Created by Douglas Silva on 16/09/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CandidateView()
            Spacer()
            VStack {
                NumericPadView()
                Spacer()
                ActionButtonsView()
            }
            .padding()
        }
    }
}

struct CandidateView: View {
    var body: some View {
        VStack {
            Text("Presidente")
            CandidateNumbers()
            Text("Nome:")
            Text("Partido:")
        }
    }
}

struct CandidateNumbers: View {
    var body: some View {
        HStack {
            CandidateNumberRectangle()
            CandidateNumberRectangle()
        }
        .background(Color.white)
    }
}

struct CandidateNumberRectangle: View {
    var body: some View {
        Rectangle()
            .frame(width: 30, height: 50, alignment: .center)
    }
}


struct NumericPadView: View {
    var body: some View {
        VStack {
            NumericPadRow()
            NumericPadRow()
            NumericPadRow()
            NumericPadButton()
        }
    }
}

struct NumericPadRow: View {
    var body: some View {
        HStack {
            ForEach(0..<3) {_ in
                NumericPadButton()
            }
        }
    }
}

struct NumericPadButton: View {
    var body: some View {
        Rectangle()
            .frame(width: 50, height: 50, alignment: .center)
    }
}

struct ActionButtonsView: View {
    var body: some View {
        HStack {
            ActionButton()
            ActionButton()
            ActionButton()
        }
    }
}

struct ActionButton: View {
    var body: some View {
        Rectangle()
            .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.fixed(width: 2688, height: 1242))
    }
}
