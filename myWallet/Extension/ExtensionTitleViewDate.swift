//
//  Extension .swift
//  myWallet
//
//  Created by Богдан Плакущий on 21.03.2023.
//

import UIKit

extension UIViewController {
    
    func createCustomNavigationBar() {
        navigationController?.navigationBar.barTintColor = Resouces.Colors.mainWhite
    }
    
    func createCustomTitleView(contactName: String, contactDescription: String , contactDay: String, delimiter: String ) -> UIView  {
        let view = UIView()
        view.frame = CGRect(x: 0, y: 0, width: 280, height: 41)
        
        let nameLabelDay = UILabel()
        nameLabelDay.text = contactDay
        nameLabelDay.frame = CGRect(x: 0, y: 0, width: 80, height: 60)
        nameLabelDay.font = UIFont.systemFont(ofSize: 50)
        view.addSubview(nameLabelDay)
        
        let nameDelimiter = UILabel()
        nameDelimiter.text = delimiter
        nameDelimiter.frame = CGRect(x: 60, y: 0, width: 10, height: 50)
        nameDelimiter.font = UIFont.systemFont(ofSize: 50)
        view.addSubview(nameDelimiter)
        
        let nameLabel = UILabel()
        nameLabel.text = contactName
        nameLabel.frame = CGRect(x: 75, y: 5, width: 220, height: 20)
        nameLabel.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(nameLabel)
        
        let descriptionLabel = UILabel()
        descriptionLabel.text = contactDescription
        descriptionLabel.frame = CGRect(x: 75, y: 30, width: 220, height: 20)
        descriptionLabel.font = UIFont.systemFont(ofSize: 18)
        descriptionLabel.textColor = .systemGray
        view.addSubview(descriptionLabel)
        
        return view
        
    }
}
