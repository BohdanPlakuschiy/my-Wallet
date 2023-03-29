//
//  MainTabBarControoler.swift
//  myWallet
//
//  Created by Богдан Плакущий on 24.03.2023.
//

import UIKit

class TabBarControler: UITabBarController {
    
    private let balanceVC = NavBarControler(rootViewController: BalanceTableVC())
    private let budgetrVC = NavBarControler(rootViewController: BudgetTableVC())
    private let todayVC = NavBarControler(rootViewController: TodayTableVC() )
    private let reportsVC = NavBarControler(rootViewController: Reports())
    private let settings = NavBarControler(rootViewController: Settings())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateTabBar()
        setTaBarAppearance()
        
    }

    private func generateTabBar() {
        viewControllers = [
            generateVc(viewControoler: todayVC, title: "Today", image: UIImage(systemName: "clock"), tag: 0),
            generateVc(viewControoler: reportsVC, title: "Reports", image: UIImage(systemName: "doc"), tag: 1),
            generateVc(viewControoler: budgetrVC, title: "Balance", image: UIImage(systemName: "creditcard"), tag: 2),
            generateVc(viewControoler: balanceVC, title: "Budget", image: UIImage(systemName: "battery.75"), tag: 3),
            generateVc(viewControoler: settings, title: "Settings", image: UIImage(systemName: "gear"), tag: 4)
        ]
    }
    
    private func generateVc(viewControoler: NavBarControler, title: String, image: UIImage?, tag: Int) -> NavBarControler {
        viewControoler.tabBarItem.title = title
        viewControoler.tabBarItem.image = image
        viewControoler.tabBarItem.tag = tag

        return viewControoler
    }
    
    func setTaBarAppearance() {
        let positionOnX: CGFloat = 10
        let positionOnY: CGFloat = 14
        let width = tabBar.bounds.width - positionOnX * 2
        let height = tabBar.bounds.height + positionOnY * 2
        
        let roundLayer = CAShapeLayer()
        
        let bezierPath = UIBezierPath(roundedRect: CGRect(x: positionOnX,
                                                          y: tabBar.bounds.minY - positionOnY,
                                                          width: width,
                                                          height: height),
                                      cornerRadius: height / 2)
        roundLayer.path = bezierPath.cgPath
        tabBar.layer.insertSublayer(roundLayer, at: 0)
        
        tabBar.itemWidth = width / 5
        tabBar.itemPositioning = .centered
        
        roundLayer.fillColor = Resouces.Colors.mainWhite.cgColor
        tabBar.tintColor = Resouces.Colors.tabBarIteamAccets
        tabBar.unselectedItemTintColor = Resouces.Colors.tabBarIteamLight
    }
    
}


