//
//  ContentView.swift
//  PlayingCards-SwiftUI
//
//  Created by Cayo Skoro on 08.05.2020.
//  Copyright © 2020 Cayo Skoro. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftCard = "10S"
    @State var rightCard = "10S"
    let rating = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]
    let lear = ["C", "D", "H", "S",]
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                HStack {
                    CardView(cardName: leftCard)
                    CardView(cardName: rightCard)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    self.leftCard = "\(self.rating.randomElement()!)\(self.lear.randomElement()!)"
                    self.rightCard = "\(self.rating.randomElement()!)\(self.lear.randomElement()!)"
                }) {
                    Text("New Cards")
                        .font(.system(size: 50
                            ))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
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

struct CardView: View {
    
    let cardName: String
    
    var body: some View {
        Image(cardName)
            .resizable()
            //.aspectRatio(1, contentMode: .fit)
            .frame(width: 150, height: 200)
    }
}
