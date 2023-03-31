//
//  AddNewRowBalance.swift
//  myWallet
//
//  Created by Богдан Плакущий on 21.03.2023.
//

import UIKit

class AddNewRowBalance: UIViewController {
    
    
     var image = UIImageView (image: UIImage())
     var textField = UITextField ()
     var nameAssetsTextField = UITextField ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        createTextField()
        createImageView()
        constraintCreateTextField()
        constraintImage()
        
    
    }
    
    private func createImageView() {
        image.tintColor = .systemGray
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        image.backgroundColor = UIColor.blue
        view.addSubview(image)
    }

    private func createTextField() {
        textField = UITextField(frame: CGRect(x: 0, y: 0, width: 300, height: 31))
        textField.borderStyle = .roundedRect
       // textField.contentVerticalAlignment = .center
        textField.textAlignment = .center
        textField.placeholder = "Assets"
        //textField.center = self.view.center
        textField.layer.borderWidth = 1 // just to make it more visible on the screen
        textField.layer.cornerRadius = textField.bounds.height / 2
        
        view.addSubview(textField)
    }
    
    private func constraintCreateTextField() {
        textField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
           // textField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textField.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            textField.leadingAnchor.constraint(equalTo: image.trailingAnchor, constant: 20),
            textField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
           // textField.widthAnchor.constraint(equalToConstant: 300)
        ])
    }
    
    private func constraintImage() {
        NSLayoutConstraint.activate([
            image.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            image.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            image.heightAnchor.constraint(equalToConstant: 50),
            image.widthAnchor.constraint(equalToConstant: 50)
        ])
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
