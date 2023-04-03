//
//  HeaderReusaleView.swift
//  myWallet
//
//  Created by Богдан Плакущий on 03.04.2023.
//

import UIKit

class HeaderReusaleView: UICollectionReusableView {
    
     var titleLabelHeaderBudget: UILabel = {
        let titleBudgetHeader = UILabel()
        titleBudgetHeader.textAlignment = .center
        titleBudgetHeader.textColor = .black
        titleBudgetHeader.numberOfLines = 0
        titleBudgetHeader.translatesAutoresizingMaskIntoConstraints = false
        titleBudgetHeader.font = UIFont.systemFont(ofSize: 24)
        return titleBudgetHeader
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupTitle()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupTitle() {
        addSubview(titleLabelHeaderBudget)
        NSLayoutConstraint.activate([
            titleLabelHeaderBudget.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            titleLabelHeaderBudget.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
            titleLabelHeaderBudget.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            titleLabelHeaderBudget.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8)
        ])
    }
        
}
