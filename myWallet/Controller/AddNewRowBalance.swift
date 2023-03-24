//
//  AddNewRowBalance.swift
//  myWallet
//
//  Created by Богдан Плакущий on 21.03.2023.
//

import UIKit

class AddNewRowBalance: UIViewController {
    
    var courseNameTextField = UITextField ()
     var nameAssetsTextField = UITextField ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        createTextField()
        constraint()
    
    }
    

    private func createTextField() {
        courseNameTextField = UITextField(frame: CGRect(x: 0, y: 0, width: 300, height: 31))
        courseNameTextField.borderStyle = .roundedRect
        courseNameTextField.contentVerticalAlignment = .center
        courseNameTextField.textAlignment = .center
        courseNameTextField.placeholder = "Assets"
        courseNameTextField.center = self.view.center
        view.addSubview(courseNameTextField)
    }
    
    private func constraint() {
       // courseNameTextField.translatesAutoresizingMaskIntoConstraints = false
       // courseNameTextField.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 20).isActive = true
       // courseNameTextField.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0).isActive = true
   
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
