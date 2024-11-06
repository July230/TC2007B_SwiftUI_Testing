//
//  ContentView.swift
//  test_app_live
//
//  Created by Ian Julian Estrada Castro on 05/11/24.
//

import SwiftUI

struct ContentView: View {
    @State var userName: String = ""
    @State var count: Int = 0
    var body: some View {
        VStack (spacing:20){
            TextField("Enter your name", text: $userName)
                .accessibilityIdentifier("nameTextField")
            Button("Submit"){
                count = count + 1
            }
            .accessibilityIdentifier("submitButton")
            Text("Welcome, \(userName) Count: \(count)")
                .accessibilityIdentifier("welcomeText")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
