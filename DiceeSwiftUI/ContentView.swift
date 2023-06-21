//
//  ContentView.swift
//  DiceeSwiftUI
//
//  Created by Sonata Girl on 04.06.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNum = 1
    @State var rightDiceNum = 5
    
    var body: some View {
        ZStack {
            Image("GreenBackground").resizable()
                .frame(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
                .ignoresSafeArea()
            VStack {
                Image("DiceeLogo")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Spacer()
                HStack {
                    DiceeView(imageNum: leftDiceNum)
                    DiceeView(imageNum: rightDiceNum)
                }.padding(.horizontal)
                Spacer()
                Button(action: {
                    leftDiceNum = Int.random(in: 1...6)
                    rightDiceNum = Int.random(in: 1...6)
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(Color.red)
                .cornerRadius(20)
            }
            .padding(50)
        }
    }
}

struct DiceeView: View {
    
    var imageNum: Int
   
    var body: some View {
        let imageName = convertNumber(num: imageNum)

        Image("Dice\(imageName)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
    }
    
    func convertNumber(num: Int) -> String {
        var numString = ""
        switch num {
        case 1: numString = "One"
        case 2: numString = "Two"
        case 3: numString = "Three"
        case 4: numString = "Four"
        case 5: numString = "Five"
        case 6: numString = "Six"
        default : numString = "none"
        }
        return numString
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

