//
//  Budget.swift
//  myWallet
//
//  Created by Богдан Плакущий on 20.03.2023.
//

import Foundation     
import UIKit

final class DataManager {
    static let categories = DataManager()
    
    private init() {
        
        
        
    }
    
    private(set) var money: [Accountant] = []
    private (set) var topics: [String: [Accountant]] = [:]
    

    
  
    
    func addAssets() -> [Accountant] {
        var array = [Accountant]()
        let cash = Accountant(assets: "Cash", nameAssets: "Готівка", imageAssets: #imageLiteral(resourceName: "37607_green_organic_plant_wallet_icon"), cost: 10)
        array.append(cash)
        let cash1 = Accountant(assets: "Cash", nameAssets: "Готівка", imageAssets: #imageLiteral(resourceName: "37607_green_organic_plant_wallet_icon"), cost: 5)
        array.append(cash1)
        let cash2 = Accountant(assets: "Cash", nameAssets: "Готівка", imageAssets: #imageLiteral(resourceName: "37607_green_organic_plant_wallet_icon"), cost: 1)
        array.append(cash2)
        let creditCards = Accountant(assets: "Credit cards", nameAssets: "Приват банк", imageAssets: #imageLiteral(resourceName: "37607_green_organic_plant_wallet_icon"), cost: 2)
        array.append(creditCards)
        let otherAssets = Accountant(assets: "Other assets", nameAssets: "Дім", imageAssets: #imageLiteral(resourceName: "37607_green_organic_plant_wallet_icon"), cost: 3)
        array.append(otherAssets)
        
        return array
    }
    
    func generateRandomAssets() -> [[Accountant]] {
        let section = addAssets()
        for item in section {
            var sectionByTopics = topics[item.assets] ?? []
            sectionByTopics.append(item)
            topics[item.assets] = sectionByTopics
        }
        return Array(topics.values)
    }
    
    
    
    func udd(_ word: [Accountant]) {
        money.insert(contentsOf: word, at: 0)
        //  topics.remove(word, at: 0)
        
    }

}
