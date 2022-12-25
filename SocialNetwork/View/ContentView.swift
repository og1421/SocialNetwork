//
//  ContentView.swift
//  SocialNetwork
//
//  Created by Orlando Moraes Martins on 23/12/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var users: [User] = []

    
    var body: some View {
        NavigationView{
            ListLayout(users: users)
                .onAppear(perform: fetchData)
                .navigationTitle("SocialMedia")
            
        }
        .padding()
    }
    
    func fetchData() {
        let url = URL(string: "https://www.hackingwithswift.com/samples/friendface.json")!
        
        let task = URLSession.shared.dataTask(with: url){ data, response, error in
            if let data = data, let response = response as? HTTPURLResponse{
                if response.statusCode == 200 {
                    
                    let decoder = JSONDecoder()
//                    let formatter = ISO8601DateFormatter()
//                    formatter.formatOptions = [.withFullDate]
//                    decoder.dateDecodingStrategy = .formatted(formatter)

                    do {
                        let user = try decoder.decode([User].self, from: data)
                        DispatchQueue.main.async {
                            self.users = user
                        }
                        
                    } catch {
                        print(error)
                    }
                } else {
                    print("API returned a non-200 response: \(response.statusCode)")
                }
            } else {
                print("No data or invalid response received from the API")
            }
        }
        task.resume()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
