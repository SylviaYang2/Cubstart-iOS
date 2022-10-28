//
//  ContentView.swift
//  lec6 states, bindings
//
//  Created by Sylvia Yang on 10/20/22.
//

import SwiftUI

struct ContentView: View {
    @State var age: Int = 1
    @State var name: String = "Andy"
    var body: some View {
        NavigationView {
            VStack {
                Text(name)
                Text(String(age))
                
                NavigationLink(destination: editProfileView(age: $age, name: $name)) {
                    Text("Edit Profile")
                }
            }
        }
        .padding()
    }
}

struct editProfileView: View {
    @Binding var age: Int
    @Binding var name: String
    var body: some View {
        VStack {
            TextField("Enter your name", text: $name)
                .textFieldStyle(.roundedBorder)
                .frame(maxWidth: 100)
            TextField("Enter you age", value: $age, format: .number)
                .textFieldStyle(.roundedBorder)
                .frame(maxWidth: 100)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
