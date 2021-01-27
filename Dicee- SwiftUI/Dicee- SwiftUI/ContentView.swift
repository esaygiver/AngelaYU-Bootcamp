//
//  ContentView.swift
//  Dicee- SwiftUI
//
//  Created by admin on 31.10.2020.
//  Copyright © 2020 esaygiver. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNumber: Int = 1
    @State var rightDiceNumber: Int = 1
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceeView(n: leftDiceNumber)
                    DiceeView(n: rightDiceNumber)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.rightDiceNumber = Int.random(in: 1...6)
                }) {
                    Text("Roll")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .frame(width: 50.0, height: 50)
                        .padding(.horizontal)
                }
                .background(Color.red)
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DiceeView: View {
    let n: Int
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .frame(width: 100, height: 100 )
            .padding()
    }
}
