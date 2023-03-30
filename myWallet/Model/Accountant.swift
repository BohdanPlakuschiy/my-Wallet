//
//  Accountant.swift
//  myWallet
//
//  Created by Богдан Плакущий on 20.03.2023.
//

import Foundation
import UIKit

struct Accountant: Equatable {
    let topic: DataManager.Topics
    let nameAssets : String
    let imageAssets: UIImage
    let cost: Int
    
    static func == (lhs: Accountant, rhs: Accountant) -> Bool {
        return lhs.topic.rawValue == rhs.topic.rawValue && lhs.nameAssets == rhs.nameAssets
    }
}
