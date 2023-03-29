//
//  MainTabBarControoler.swift
//  myWallet
//
//  Created by Богдан Плакущий on 24.03.2023.
//

import UIKit

class MainTabBarControler: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateTabBar()
        setTaBarAppearance()
        
        // Do any additional setup after loading the view.
    }
    let balanceVC = UINavigationController(rootViewController: BalanceTableVC())
    let budgetrVC = UINavigationController(rootViewController: BudgetTableVC())
    let todayVC = UINavigationController(rootViewController: TodayTableVC() )
    let reportsVC = UINavigationController(rootViewController: Reports())
    let settings = UINavigationController(rootViewController: Settings())

    private func generateTabBar() {
        viewControllers = [
            generateVc(viewControoler: todayVC, title: "Today", image: UIImage(systemName: "clock"), tag: 0),
            generateVc(viewControoler: reportsVC, title: "Reports", image: UIImage(systemName: "doc"), tag: 1),
            generateVc(viewControoler: budgetrVC, title: "Balance", image: UIImage(systemName: "creditcard"), tag: 2),
            generateVc(viewControoler: balanceVC, title: "Budget", image: UIImage(systemName: "battery.75"), tag: 3),
            generateVc(viewControoler: settings, title: "Settings", image: UIImage(systemName: "gear"), tag: 4)
        ]
        
    }
    
    private func generateVc(viewControoler: UIViewController, title: String, image: UIImage?, tag: Int) -> UIViewController {
        viewControoler.tabBarItem.title = title
        viewControoler.tabBarItem.image = image
        viewControoler.tabBarItem.tag = tag
       // viewControoler.navigationController?.view.backgroundColor  = UIColor.white
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
        
        roundLayer.fillColor = UIColor.mainWhite.cgColor
        tabBar.tintColor = UIColor.tabBarIteamAccets
        tabBar.unselectedItemTintColor = UIColor.tabBarIteamLight
        
    }

}

extension UIColor {
    static var tabBarIteamAccets: UIColor {
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
    static var mainWhite: UIColor {
        #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
    }
    static var tabBarIteamLight: UIColor {
        #colorLiteral(red: 0.5791940689, green: 0.1280144453, blue: 0.5726861358, alpha: 0.5394764073)
    }
}
