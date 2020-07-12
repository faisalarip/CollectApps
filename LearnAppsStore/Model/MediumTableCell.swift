//
//  MediumTableCell.swift
//  LearnAppsStore
//
//  Created by Faisal Arif on 14/06/20.
//  Copyright © 2020 AppBrewery. All rights reserved.
//

import UIKit

class MediumTableCell: UICollectionViewCell, SelfConfiguringCell {
    
    static var reusableIdentifier: String = "MediumTableCell"
    
    let name = UILabel()
    let subtitle = UILabel()
    let imageView = UIImageView()
    let buyButton = UIButton(type: .custom)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        name.font = .preferredFont(forTextStyle: .headline)
        name.textColor = .label
        
        subtitle.font = .preferredFont(forTextStyle: .subheadline)
        subtitle.textColor = .secondaryLabel
        
        imageView.layer.cornerRadius = 15
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        
        buyButton.setImage(UIImage(systemName: "icloud.and.arrow.down"), for: .normal)
        
        imageView.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        buyButton.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        
        let innerStackView = UIStackView(arrangedSubviews: [name, subtitle])
        innerStackView.axis = .vertical
        
        let outerStackView = UIStackView(arrangedSubviews: [imageView, innerStackView, buyButton])
        outerStackView.translatesAutoresizingMaskIntoConstraints = false
        outerStackView.alignment = .center
        outerStackView.spacing = 20
        contentView.addSubview(outerStackView)
        
        NSLayoutConstraint.activate([
        
            outerStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            outerStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            outerStackView.topAnchor.constraint(equalTo: contentView.topAnchor),
            outerStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
        ])
        
    }
    
    func configureCellLayout(with app: App) {
     
        name.text = app.name
        subtitle.text = app.subheading
        imageView.image = UIImage(named: app.image)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("Just.. no")
    }
    
}
