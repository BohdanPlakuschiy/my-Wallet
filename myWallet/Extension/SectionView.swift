//
//  SectionView.swift
//  myWallet
//
//  Created by Богдан Плакущий on 30.03.2023.
//

import UIKit

extension UIViewController {
    
    func createCustomSection(contactName: String, contactDescription: String) -> UIView {
        let header = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height))
        header.backgroundColor = .systemGray
        let label: UILabel = {
            let label = UILabel()
            label.text = contactName
            label.translatesAutoresizingMaskIntoConstraints = false
            label.font = UIFont.systemFont(ofSize: 20)
            return label
        }()
        header.addSubview(label)

        let label1: UILabel = {
            let label1 = UILabel()
            label1.text = contactDescription
            label1.translatesAutoresizingMaskIntoConstraints = false
            label1.font = UIFont.systemFont(ofSize: 20)
            return label1
        }()
        header.addSubview(label1)
        
        label.trailingAnchor.constraint(equalTo: header.trailingAnchor, constant: -20).isActive = true
        label.topAnchor.constraint(equalTo: header.topAnchor, constant: 10).isActive = true

        label1.leadingAnchor.constraint(equalTo: header.leadingAnchor, constant: 20).isActive = true
        label1.topAnchor.constraint(equalTo: header.topAnchor, constant: 10).isActive = true

        return header
        
    }
}
