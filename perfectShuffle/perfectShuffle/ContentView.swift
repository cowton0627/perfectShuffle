//
//  ContentView.swift
//  perfectShuffle
//
//  Created by 鄭淳澧 on 2021/5/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        
        ZStack {
            Image("background")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Image("logo")
                    .scaleEffect(x: 1.5, y: 1.5, anchor: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Image(playerCard)
                        .scaleEffect(x: 1.5, y: 1.5, anchor: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    Spacer()
                    
                    Image(cpuCard)
                        .scaleEffect(x: 1.5, y: 1.5, anchor: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    Spacer()
                }
                
                Spacer()
                
                Button(action: {
                    //generate a random number between 2 and 14
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    //update the cards
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    
                    //update the score
//                    playerScore += 1
//                    cpuScore += 1
                    
                    if (playerRand > cpuRand) {
                        playerScore += 1
                    }else if (cpuRand > playerRand) {
                        cpuScore += 1
                    }else {
                        //don't do anything
                    }
                    
                }, label: {
                    Image("dealbutton")
                        .scaleEffect(x: 1.5, y: 1.5, anchor: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                })
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    VStack {
                        Text("Player")
                            .font(.system(size: 50))
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.system(size: 50))
                            .foregroundColor(Color.white)
                    }
                    
                    Spacer()
                    
                    VStack {
                        Text("CPU")
                            .font(.system(size: 50))
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.system(size: 50))
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
