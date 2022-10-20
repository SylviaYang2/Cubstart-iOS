//
//  ContentView.swift
//  Counter
//
//  Created by Sylvia Yang on 9/29/22.
//

import SwiftUI

struct ContentView: View {
    @State var num = 0
    
    // Prevent going below 0
    func decrementNum() {
        if num == 0 {
            
        } else {
            num -= 1
        }
    }
    
    var body: some View {
        VStack(spacing: 40) {
            Image("Oski")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 150)
                .clipShape(Circle())
            
            Text(String(num))
                .padding()
                .font(.system(size: 50))
            
            HStack(spacing: 50) {
                Button("increment") {
                    num += 1
                }
                
                Button("decrement") {
                    decrementNum()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
