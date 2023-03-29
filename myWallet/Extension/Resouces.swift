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
            #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
        }
        static var tabBarIteamLight: UIColor {
            #colorLiteral(red: 0.5791940689, green: 0.1280144453, blue: 0.5726861358, alpha: 0.5394764073)
        }
        static var navTitleGray: UIColor {
            #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        }
    }
    enum Fonts {
        static func helvelticaRegular(with size: CGFloat) -> UIFont {
            UIFont(name: "Helveltica", size: size) ?? UIFont()
        }
    }
}
