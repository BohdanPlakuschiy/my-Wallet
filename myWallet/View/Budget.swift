//
//  Budget.swift
//  myWallet
//
//  Created by Богдан Плакущий on 03.04.2023.
//

import UIKit

class Budget: UICollectionViewCell {
    
    private let imageTotal: UIImageView = {
        let image = UIImageView(image: UIImage())
        image.tintColor = .systemGray
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   private func setup() {
        self.contentView.addSubview(imageTotal)
        imageTotal.translatesAutoresizingMaskIntoConstraints = false
        
        self.clipsToBounds = true
        
        NSLayoutConstraint.activate([       
            imageTotal.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            imageTotal.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            imageTotal.topAnchor.constraint(equalTo: contentView.topAnchor),
            imageTotal.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
    
    func updateBudget(imageArray: UIImage) {
        imageTotal.image = imageArray
    }
    
}
