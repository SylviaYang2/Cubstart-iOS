//
//  ContentView.swift
//  NavigationView Lec4
//
//  Created by Sylvia Yang on 10/6/22.
//

import SwiftUI

struct ContentView: View {
    @State var score: Int = 0
    
    var body: some View {
        TabView {
            rollDiceView(score: $score)
                .tabItem {
                    Label("Roll", systemImage: "dice.fill")
                }
            
            scoreView(score: score)
                .tabItem {
                    Label("Score", systemImage: "number.square.fill")
                }
        }
    }
}

struct rollDiceView: View {
    func rollDice() -> Int {
        return Int.random(in: 1...6)
    }
    
    @Binding var score: Int
    @State var rolledDice: Bool = false
    @State var value: Int = 0
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: rollOutcomeView(outcome: value),
                               isActive: $rolledDice) {EmptyView()}
                
                Button {
                    value = rollDice()
                    score += value
                    rolledDice = true
                } label: {
                    Text("Roll me!")
                    Image(systemName: "dice")
                }
            }
            .navigationTitle("Dice Roller")
        }
    }
}

struct rollOutcomeView: View {
    var outcome: Int
    var body: some View {
        Text("Congrats you rolled \(outcome)")
    }
}

struct scoreView: View {
    var score: Int
    var body: some View {
        Text("Your score is \(score)")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
