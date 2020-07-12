//
//  Section.swift
//  LearnAppsStore
//
//  Created by Faisal Arif on 12/06/20.
//  Copyright © 2020 AppBrewery. All rights reserved.
//

import UIKit

struct Section: Decodable, Hashable {
    let id: Int
    let type: String
    let title: String
    let subtitle: String
    let items: [App]
}
