//
//  ContentView.swift
//  CoffeeMasters
//
//  Created by Willy on 26/1/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        EmptyView()
    }
}
//Greeting component
struct Greeting: View {
    
    @State var name = ""
    
    var body: some View {
        VStack {
            TextField("Enter your name", text: $name)
            Text("Hello \(name)!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
