//
//  BalanceUiView.swift
//  myWallet
//
//  Created by Богдан Плакущий on 20.03.2023.
//

import UIKit

class BalanceUiView: UITableViewCell {
    
    let image: UIImageView = {
        let image = UIImageView(image: UIImage())
        image.tintColor = .systemGray
        image.contentMode = .scaleAspectFit

        return image
    }()

    var courseName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()
    var courseName1: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        // Set any attributes of your UI components here
        
        // Add the UI components
        contentView.addSubview(courseName1)
        contentView.addSubview(courseName)
        contentView.addSubview(image)
        
        NSLayoutConstraint.activate([
            courseName.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            courseName.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0),
            courseName.heightAnchor.constraint(equalToConstant: 50),
            courseName.widthAnchor.constraint(equalToConstant: 120)
        ])
        
        NSLayoutConstraint.activate([
            
            courseName1.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0),
            courseName1.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            courseName1.heightAnchor.constraint(equalToConstant: 50),
            courseName.widthAnchor.constraint(equalToConstant: 120)
        ])
    }

    func update(word: String, word1: String) {
    courseName.text = word
        courseName1.text = word1
}
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
}



 


