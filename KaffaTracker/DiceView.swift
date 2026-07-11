//
//  DiceView.swift
//  KaffaTracker
//
//  Created by Syed Rahaman on 13/06/26.
//

import SwiftUI

struct DiceView: View {
    @State var numberOfPips: Int = 1
    
    var body: some View {
        VStack {
            Image(systemName: "die.face.\(numberOfPips).fill")
                .resizable()
                .frame(maxWidth: 100, maxHeight: 100)
                .aspectRatio(1, contentMode: .fit)
                .foregroundStyle(.black, .white)
            
            Button("Roll") {
                withAnimation {
                    numberOfPips = Int.random(in: 1...6)
                }
            }
            .buttonStyle(.bordered)
        }
        
    }
}

#Preview {
    DiceView()
}
