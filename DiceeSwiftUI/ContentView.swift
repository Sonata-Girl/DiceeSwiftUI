//
//  ContentView.swift
//  DiceeSwiftUI
//
//  Created by Sonata Girl on 04.06.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("GreenBackground").resizable()
                .frame(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("DiceeLogo")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Spacer()
                HStack {
                    DiceeView(imageName: "One")
                    DiceeView(imageName: "Two")
                }.padding(.horizontal)
                Button(action: {
                    
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(Color.red)
                .cornerRadius(30)
            }
        }
        .padding()
    }
}

struct DiceeView: View {
    
    let imageName: String
    
    var body: some View {
        Image("Dice\(imageName)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

