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
        view.backgroundColor = Resouces.Colors.mainWhite
      //  navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.barTintColor = Resouces.Colors.mainWhite
        view.backgroundColor = .white


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
