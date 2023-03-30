//
//  SectionView.swift
//  myWallet
//
//  Created by Богдан Плакущий on 30.03.2023.
//

import UIKit

extension UIViewController {
    
    func createCustomSection(contactName: String, contactDescription: String ) -> UIView {
        let header = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 40))
        header.backgroundColor = .systemGray
        let label: UILabel = {
            let label = UILabel()
            label.text = contactName
            label.translatesAutoresizingMaskIntoConstraints = false
            label.font = UIFont.systemFont(ofSize: 20)
            return label
        }()
        header.addSubview(label)
        let label1 = UILabel(frame: CGRect(x: 20 ,
                                          y: 5,
                                          width: header.frame.size.width,
                                          height: header.frame.size.height-10))
        label1.font = .systemFont(ofSize: 22, weight: .regular)
        label1.text = contactDescription
        header.addSubview(label1)
        label.trailingAnchor.constraint(equalTo: header.trailingAnchor, constant: -20).isActive = true
        label.topAnchor.constraint(equalTo: header.topAnchor, constant: 10).isActive = true
        
        return header
        
    }
}
