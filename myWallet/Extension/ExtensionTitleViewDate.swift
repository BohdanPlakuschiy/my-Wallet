//
//  Extension .swift
//  myWallet
//
//  Created by Богдан Плакущий on 21.03.2023.
//

import UIKit

extension UIViewController {
    
//    func createCustomNavigationBar() {
//        navigationController?.navigationBar.barTintColor = Resouces.Colors.mainWhite
//    }
    
    func createCustomTitleView(contactName: String, contactDescription: String , contactDay: String, delimiter: String ) -> UIView  {
        let view = UIView()
        view.frame = CGRect(x: 0, y: 0, width: 270, height: 40)
        
        let nameLabelDay = UILabel()
        nameLabelDay.text = contactDay
        nameLabelDay.frame = CGRect(x: 0, y: 0, width: 60, height: 50)
        nameLabelDay.font = UIFont.systemFont(ofSize: 40)
        view.addSubview(nameLabelDay)
        
        let nameDelimiter = UILabel()
        nameDelimiter.text = delimiter
        nameDelimiter.frame = CGRect(x: 45, y: 0, width: 10, height: 40)
        nameDelimiter.font = UIFont.systemFont(ofSize: 40)
        view.addSubview(nameDelimiter)
        
        let nameContactName = UILabel()
        nameContactName.text = contactName
        nameContactName.frame = CGRect(x: 60, y: 5, width: 220, height: 17)
        nameContactName.font = UIFont.systemFont(ofSize: 17)
        view.addSubview(nameContactName)
        
        let descriptionLabel = UILabel()
        descriptionLabel.text = contactDescription
        descriptionLabel.frame = CGRect(x: 60, y: 25, width: 220, height: 17)
        descriptionLabel.font = UIFont.systemFont(ofSize: 17)
        descriptionLabel.textColor = .systemGray
        view.addSubview(descriptionLabel)
        
        return view
        
    }
}
