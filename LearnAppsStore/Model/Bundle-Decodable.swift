//
//  Bundle-Decodable.swift
//  LearnAppsStore
//
//  Created by Faisal Arif on 12/06/20.
//  Copyright © 2020 AppBrewery. All rights reserved.
//

import UIKit

extension Bundle {
    
    func decode<T: Decodable> (_ type: T.Type, from file: String) -> T {
        
        guard let url = self.url(forResource: file, withExtension: nil) else {fatalError("Failed to locate \(file) to bundle.")}
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }
        
        let decoder = JSONDecoder()
        
        guard let loaded = try? decoder.decode(T.self, from: data) else {fatalError("Failed to decode \(file) from bundle")}
        
        return loaded
        
    }
}
