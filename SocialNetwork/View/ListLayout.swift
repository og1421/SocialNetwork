//
//  ListLayout.swift
//  SocialNetwork
//
//  Created by Orlando Moraes Martins on 24/12/22.
//

import SwiftUI

struct ListLayout: View {
    let users: [User]
    
    var body: some View {
        ForEach(users) { user in
            NavigationLink{
                Text("teste")
            } label: {
                VStack{
                    Text(user.name)
                        .font(.headline)
                    
                    user.isActive == true ? Text("Online") : Text("Offline")
                        .font(.caption)
                        .foregroundColor(user.isActive == true ? .green.opacity(0.5) : .secondary)
                }
            }
        }
    }
}
