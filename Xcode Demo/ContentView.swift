//
//  ContentView.swift
//  Xcode Demo
//
//  Created by Kevin Ajit on 23/02/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    
    
    var body: some View {

        ZStack {

            Image("background-cloth")
                .resizable()
                .ignoresSafeArea()

            VStack {
                Spacer()

                Image("logo")

                Spacer()

                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                Spacer()

                

                Button {
                    deal()
                } label: {
                    Image("button")
                }

                
                
                Spacer()

                HStack {
                    
                    Spacer()
                    
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 17.16)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    
                    Spacer()
                    
                    VStack {
                        Text("Computer")
                            .font(.headline)
                            .padding(.bottom, 17.16)

                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    
                    Spacer()
                    
                }
                .foregroundColor(.white)

                Spacer()
            }

        }

    }
    
    func deal(){
        // randomise the playerCard
        playerCard = "card" + String(Int.random(in: 2...14))
        
        // randomise the cpuCard
        cpuCard = "card" + String(Int.random(in: 2...14))
        
        // update the scores
        if playerCard > cpuCard {
            playerScore += 1
        }
        else if playerCard < cpuCard {
            cpuScore += 1
        }
    }
}

#Preview {
    ContentView()
}
