//
//  ContentView.swift
//  lec6 env_object demo
//
//  Created by Sylvia Yang on 10/20/22.
//

import SwiftUI

class Pet: ObservableObject {
    @Published var animal: String
    @Published var name: String
    @Published var age: Int
    var imageName: String
    
    init(animalType: String, animalName: String, animalAge: Int, imageName: String) {
        self.animal = animalType
        self.name = animalName
        self.age = animalAge
        self.imageName = imageName
    }
}

struct EnvObjDemo: View {
    @StateObject var myPet: Pet = Pet(animalType: "capybara", animalName: "bella", animalAge: 1, imageName: "capybara")
    
    var body: some View {
        VStack {
            displayPetView()
        }
        .environmentObject(myPet)
    }
}

struct displayPetView: View {
    @EnvironmentObject var myPet: Pet
    var body: some View {
        VStack {
            HStack {
                Text(myPet.animal)
                Text(myPet.name)
                Text(String(myPet.age))
            }
            Image(myPet.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Button("Increment Age") {
                myPet.age += 1
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EnvObjDemo()
    }
}
