//
//  App.swift
//  LearnAppsStore
//
//  Created by Faisal Arif on 12/06/20.
//  Copyright © 2020 AppBrewery. All rights reserved.
//

import UIKit

struct App: Decodable, Hashable {
    
    let id: Int
    let tagline: String
    let name: String
    let subheading: String
    let image: String
    let iap: Bool
}
