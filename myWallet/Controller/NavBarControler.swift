//
//  NavBarControler.swift
//  myWallet
//
//  Created by Богдан Плакущий on 29.03.2023.
//

import UIKit

class NavBarControler: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
   private func configure() {
       view.backgroundColor = .white
       navigationBar.isTranslucent = false
       navigationBar.standardAppearance.titleTextAttributes = [
        .foregroundColor: Resouces.Colors.navTitleGray,
        .font: Resouces.Fonts.helvelticaRegular(with: 17)]
       
       navigationBar.addBottomBorder(with: Resouces.Colors.tabBarIteamLight, heith: 10)
    }

}
