//
//  UserDetail.swift
//  SocialNetwork
//
//  Created by Orlando Moraes Martins on 23/12/22.
//

import SwiftUI

struct UserDetail: View {
    let id: String
    
    var body: some View {
        Text("\(id)")
    }
}

struct UserDetail_Previews: PreviewProvider {
    static var previews: some View {
        UserDetail(id: "alou")
    }
}
