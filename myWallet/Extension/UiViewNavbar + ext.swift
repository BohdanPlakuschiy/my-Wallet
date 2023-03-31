//
//  UiViewNavbar + ext.swift
//  myWallet
//
//  Created by Богдан Плакущий on 29.03.2023.
//

import UIKit

extension UIView {
    func addBottomBorder(with color: UIColor, heith: CGFloat) {
        let separator = UIView()
        separator.backgroundColor = color
       // separator.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        separator.frame = CGRect(x: 0,
                                 y: frame.height - heith,
                                 width: frame.width,
                                 height: heith)
        addSubview(separator)
    }
}
