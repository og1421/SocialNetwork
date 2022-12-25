//
//  UserDetail.swift
//  SocialNetwork
//
//  Created by Orlando Moraes Martins on 23/12/22.
//

import SwiftUI

struct UserDetail: View {
    let user: User
    
    var body: some View {
        VStack{
            Section{
                HStack{
                    Text(user.name)
                        .font(.headline)
                    
                    user.isActive == true ? Text("Online") : Text ("Offline")
                }
                .clipShape(RoundedRectangle(cornerRadius: 5))
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(.black)
                )
                .padding()
            }
            
            
            Text("Registered in: \(user.registered)")
            Text("Age: \(user.age)")
            Text("Company: \(user.company)")
            Text("Email: \(user.email)")
            Text("Address: \(user.address)")
            
            Section{
                Text(user.about)
                    .padding()
            } header: {
                Text("About")
                    .font(.headline)
            }
            Section{
                Text("Friends: ")
                    .font(.headline)
            }
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ForEach(user.friends){ friend in
                        Text("👷🏼‍♀️\(friend.name)")
                    }
                }
            }
        }
    }
}
