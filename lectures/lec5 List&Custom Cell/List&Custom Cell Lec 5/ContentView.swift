//
//  ContentView.swift
//  List&Custom Cell Lec 5
//
//  Created by Sylvia Yang on 10/13/22.
//

import SwiftUI

struct ContentView: View {
    var names = ["Sylvia", "Leo"]
    var body: some View {
        NavigationView {
            List {
                Section() {
                    CustomCell(imagename: "airplane", text: "Airplane Mode")

                    NavigationLink(destination: Text("Wi-Fi")) {
                        Text("Wi-Fi")
//                        CustomCell(imagename: "airplane mode", text: "Airplane Mode")
                    }
                    
                    NavigationLink(destination: Text("Cellular")) {
                        Text("Cellular")
                    }
                }
                
                Section() {
                    NavigationLink(destination: Text("Notification")) {
                        Text("Notification")
                    }
                    
                    NavigationLink(destination: Text("Sound & Haptics")) {
                        Text("Sound & Haptics")
                    }
                    
                    NavigationLink(destination: Text("Focus")) {
                        Text("Focus")
                    }
                }
                
            
                Section() {
                    ForEach(names, id: \.self) { name in
                        Text(name)
                    }
                }
            }
            .navigationTitle("Settings")
            .listStyle(GroupedListStyle())
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
