//
//  NavBarController.swift
//  myWallet
//
//  Created by Богдан Плакущий on 31.03.2023.
//

import UIKit

class NavBarControler: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        
    }
    
    private func configure() {
        view.backgroundColor = Resouces.Colors.navTitleGray
        navigationBar.isTranslucent = false
        navigationBar.tintColor = Resouces.Colors.tabBarIteamAccets
        //navigationBar.prefersLargeTitles = true
        //navigationBar.standardAppearance.titleTextAttributes = [
        //        .foregroundColor: Resouces.Colors.navTitleGray,
        //        .font: Resouces.Fonts.helvelticaRegular(with: 100)]
        //
        // navigationBar.addBottomBorder(with: Resouces.Colors.navTitleGray, heith: 17)
    }
    
}
