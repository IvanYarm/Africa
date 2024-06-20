//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by Ivan Yarm on 6/16/24.
//

import Foundation


extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        // 1. Locate the json file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in the bundle")
        }
        
        //2. Creat the property
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failde to load \(file) from bundle")
        }
        
        
        // 3. Creat decoder
        let decoder = JSONDecoder()
        
        // 4. Creat a property for the decoded data
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle")
        }
        
        
        // 5. Return the ready to use data
        return loaded
    }
    
}
