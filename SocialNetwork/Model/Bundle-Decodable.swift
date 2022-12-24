//
//  Bundle-Decodable.swift
//  SocialNetwork
//
//  Created by Orlando Moraes Martins on 23/12/22.
//

import Foundation

extension Bundle {
    func decode<TypeOfData: Codable>(_ file: String) -> TypeOfData{
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }
        
        let decoder = JSONDecoder()
        let formatter = DateFormatter()
        formatter.dateFormat = "y-MM-dd"
        decoder.dateDecodingStrategy = .formatted(formatter)
        
        guard let loaded = try? decoder.decode(TypeOfData.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle")
        }
        
        return loaded
    }
}
