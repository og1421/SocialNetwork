//
//  CachedUser+CoreDataProperties.swift
//  SocialNetwork
//
//  Created by Orlando Moraes Martins on 26/12/22.
//
//

import Foundation
import CoreData


extension CachedUser {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CachedUser> {
        return NSFetchRequest<CachedUser>(entityName: "CachedUser")
    }

    @NSManaged public var id: String?
    @NSManaged public var isActive: Bool
    @NSManaged public var name: String?
    @NSManaged public var age: Int16
    @NSManaged public var company: String?
    @NSManaged public var email: String?
    @NSManaged public var address: String?
    @NSManaged public var about: String?
    @NSManaged public var registered: String?
    @NSManaged public var friend: CachedFriend?
    
    public var unwrappedName: String {
        name ?? "Unknown"
    }
    
    public var unwrappedCompany: String {
        company ?? "Unknown"
    }
    
    public var unwrappedEmail: String {
        email ?? "Unknown"
    }
    
    public var unwrappedAddress: String {
        address ?? "Unknown"
    }
    
    public var unwrappedAbout: String {
        about ?? " "
    }
    
    public var unwrappedRegistered: String {
        registered ?? "Unknown"
    }

}

extension CachedUser : Identifiable {

}
