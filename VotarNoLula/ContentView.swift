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
            .background(Color(#colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1)))
            .padding()
        }
    }
}

struct CandidateView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Presidente")
                .font(.title2)
            CandidateNumbers()
            Text("Nome:")
            Text("Partido:")
            Spacer()
        }
        .font(.system(size: 14, weight: .semibold, design: .default))
        .padding()
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
        Text("")
            .padding(14)
            .border(Color.black, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
    }
}


struct NumericPadView: View {
    var body: some View {
        VStack {
            NumericPadRow(initial: 1, end: 3)
            NumericPadRow(initial: 4, end: 6)
            NumericPadRow(initial: 7, end: 9)
            NumericPadButton(number: 0)
        }
    }
}

struct NumericPadRow: View {
    let initial: Int
    let end: Int
    
    var body: some View {
        HStack {
            ForEach(initial..<end+1) { i in
                NumericPadButton(number: i)
            }
        }
        
    }
}

struct NumericPadButton: View {
    let number: Int
    var body: some View {
        Button(action: {
            print(number)
        }, label: {
            Text("\(number)")
                .foregroundColor(Color(#colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)))
        })
        .disabled(number != 1 && number != 3)
        .frame(width: 90, height: 65, alignment: .center)
    }
}

struct ActionButtonsView: View {
    var body: some View {
        HStack {
            ActionButton(color: .white, title: "Branco")
            ActionButton(color: .orange, title: "Corrige")
            ActionButton(color: .green, title: "Confirma")
        }
        .padding()
    }
}

struct ActionButton: View {
    let color: Color
    let title: String
    
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            Text(title.uppercased())
                .font(.system(size: 12, weight: .semibold, design: .default))
                .foregroundColor(.black)
        })
        .frame(width: 90, height: 50, alignment: .center)
        .background(color)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.fixed(width: 812, height: 375))
    }
}
