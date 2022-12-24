//
//  UserList.swift
//  SocialNetwork
//
//  Created by Orlando Moraes Martins on 23/12/22.
//

import SwiftUI

struct UserList: View {
    let name:String
    let isActive: Bool
    
    var body: some View {
        VStack (alignment: .leading) {
            Text("\(name)")
                .font(.headline)
            
            isActive == true ? Text("Online") : Text("Offline")
                .foregroundColor(isActive == true ? .green : .secondary)
        }
    }
}

//struct UserList_Previews: PreviewProvider {
//    static var previews: some View {
//        UserList()
//    }
//}
