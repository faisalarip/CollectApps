//
//  SelfConfigurationCell.swift
//  LearnAppsStore
//
//  Created by Faisal Arif on 12/06/20.
//  Copyright © 2020 AppBrewery. All rights reserved.
//

import UIKit

protocol SelfConfiguringCell {
    
    static var reusableIdentifier: String { get }
    func configureCellLayout(with app: App)
    
}
