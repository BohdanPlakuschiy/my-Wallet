//
//  AddNewRowBalance.swift
//  myWallet
//
//  Created by Богдан Плакущий on 21.03.2023.
//

import UIKit

class AddNewRowBalance: UIViewController {
    
    var courseNameTextField = UITextField ()
        
        
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupView()
        
        courseNameTextField = UITextField(frame: CGRect(x: 0, y: 0, width: 300, height: 31))
        courseNameTextField.borderStyle = .roundedRect
        courseNameTextField.contentVerticalAlignment = .center
        courseNameTextField.textAlignment = .center
        courseNameTextField.placeholder = "Assets"
        courseNameTextField.center = self.view.center
        view.addSubview(courseNameTextField)
       
    }
    
    
    func setupView() {
        createCustomNavigationBar()
        
 //       let customTitleView = createCustomTitleView(contactName: "Swift",
 //                                                   contactDescription: "New lesson",
 //                                                   contactImage: "37607_green_organic_plant_wallet_icon")
 //
 //       navigationItem.titleView = customTitleView
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
