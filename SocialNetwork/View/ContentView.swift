//
//  ContentView.swift
//  SocialNetwork
//
//  Created by Orlando Moraes Martins on 23/12/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var confirmationMessage = ""
    @State private var showingConfirmation = false
    @State private var titleAlert = "Thank you"
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            
            
        }
        .padding()
    }
    
    func fetchData() async {
        guard let url = URL(string: "https://www.hackingwithswift.com/samples/friendface.json") else{
            return
        }
        
        do {
            
        } catch {
            titleAlert = "Alert"
            confirmationMessage = "Loading data is failed"
            showingConfirmation = true
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
