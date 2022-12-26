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
        NavigationView{
            Form{
                Section{
                    VStack(alignment: .leading, spacing: 10){
                        Text("**Registered in**: \(user.registered)")
                        Text("**Age**: \(user.age)")
                        Text("**Company**: \(user.company)")
                        Text("**Email**: \(user.email)")
                        Text("**Address**: \(user.address)")
                    }
                } header: {
                    Text("Personal info")
                }
                Section{
                    Text(user.about)
                } header: {
                    Text("About")
                }
                
                Section{
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack{
                            ForEach(user.friends){ friend in
                                Text("👷🏼‍♀️\(friend.name)")
                            }
                        }
                    }
                }header: {
                    Text("Friends")
                }
            }
        }
        .navigationTitle(user.name)
    }
}
