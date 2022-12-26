//
//  User.swift
//  SocialNetwork
//
//  Created by Orlando Moraes Martins on 23/12/22.
//

import Foundation

struct User: Codable, Identifiable{
    struct Friends: Codable, Identifiable{
        let id: String
        let name: String
    }
    
    let id: String
    let isActive: Bool
    let name: String
    let age: Int16
    let company: String
    let email: String
    let address: String
    let about: String
    let registered: String
    let tags: [String]
    let friends: [Friends]
    
    func isEmpty() -> Bool {
        if id == "" {
            return true
        }
        return false
    }
//    var formattedLaucher: String {
//        registered?.formatted(date: .abbreviated, time: .omitted) ?? "N/A"
//    }
    
}
