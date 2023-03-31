//
//  Resouces.swift
//  myWallet
//
//  Created by Богдан Плакущий on 29.03.2023.
//

import UIKit

enum Resouces {
    enum Colors {
        static var tabBarIteamAccets: UIColor {
            #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        }
        static var mainWhite: UIColor {
            #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        }
        static var tabBarIteamLight: UIColor {
            #colorLiteral(red: 0.5791940689, green: 0.1280144453, blue: 0.5726861358, alpha: 0.5394764073)
        }
        static var navTitleGray: UIColor {
            #colorLiteral(red: 0.7802171111, green: 0.5428803563, blue: 0.7702465653, alpha: 1)
        }
    }
    enum Images {
        static var todayTabBarItem = UIImage(systemName: "clock")
        static var reportsTabBarItem = UIImage(systemName: "doc")
        static var budgetrTabBarItem = UIImage(systemName: "creditcard")
        static var balanceTabBarItem = UIImage(systemName: "battery.75")
        static var settingsTabBarItem = UIImage(systemName: "gear")
        static var todayRightBarButtonItem = UIImage(systemName: "doc.badge.plus")
        
    }
    enum Fonts {
        static func helvelticaRegular(with size: CGFloat) -> UIFont {
            UIFont(name: "Helveltica", size: size) ?? UIFont()
        }
    }
}
