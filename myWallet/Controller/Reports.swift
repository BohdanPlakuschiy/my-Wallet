//
//  ReportsViewController.swift
//  myWallet
//
//  Created by Богдан Плакущий on 20.03.2023.
//

import UIKit

class Reports: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Reports"
               view.backgroundColor = .gray
               //var reports = UITabBarItem()
               //reports = UITabBarItem(tabBarSystemItem: .search, tag: 3)
               //self.tabBarItem = reports
               navigationController?.navigationBar.prefersLargeTitles = true

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
