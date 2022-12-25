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
        List(users) { user in
            NavigationLink{
                UserDetail(user: user)
            } label: {
                HStack{
                    Text("\(user.name) -")
                    
                    user.isActive == true ? Text("Online") : Text("Offline")
                        .font(.caption)
//                        .foregroundColor(user.isActive == true ? .green.opacity(0.5) : .secondary)
                }
                .clipShape(RoundedRectangle(cornerRadius: 4))
                .overlay(
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(.white)
                )
            }
        }
    }
}
        
//        List(users) { user in
//            Text(user.name)
//        }
