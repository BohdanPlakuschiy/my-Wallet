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
        money = createInitialAssets()
//        topics = generateRandomAssets()
    }
    
    private(set) var money: [Accountant] = []
//    private (set) var topics: [String: [Accountant]] = [:]
    
    func money(topic: Topics) -> [Accountant] {
        money.filter { $0.topic == topic }
    }
    
    func totalMoney(topic: Topics) -> Int {
        money(topic: topic).reduce(0) { $0 + $1.cost }
    }

    func createInitialAssets() -> [Accountant] {
        var array = [Accountant]()
        let cash = Accountant(topic: .cash, nameAssets: "Готівка", imageAssets: #imageLiteral(resourceName: "37607_green_organic_plant_wallet_icon"), cost: 10)
        array.append(cash)
        let cash1 = Accountant(topic: .cash, nameAssets: "Готівка", imageAssets: #imageLiteral(resourceName: "37607_green_organic_plant_wallet_icon"), cost: 5)
       array.append(cash1)
        let cash2 = Accountant(topic: .cash, nameAssets: "Готівка", imageAssets: #imageLiteral(resourceName: "37607_green_organic_plant_wallet_icon"), cost: 1)
       array.append(cash2)
        let creditCards = Accountant(topic: .creditCard, nameAssets: "Приват банк", imageAssets: #imageLiteral(resourceName: "37607_green_organic_plant_wallet_icon"), cost: 2)
        array.append(creditCards)
        let otherAssets = Accountant(topic: .otherAssets, nameAssets: "Дім", imageAssets: #imageLiteral(resourceName: "37607_green_organic_plant_wallet_icon"), cost: 3)
        array.append(otherAssets)
        
        return array
    }
    
//     func generateRandomAssets() -> [[Accountant]] {
//        let section = addAssets()
//        for item in section {
//            var sectionByTopics = topics[item.assets] ?? []
//            sectionByTopics.append(item)
//            topics[item.assets] = sectionByTopics
//        }
//         return Array(topics.values)
//    }
    
    func addWords(_ words: Accountant) {
        money.insert(words, at: 0)
    }
    
    func markAsDelete(_ word: Accountant) {
        guard let removeIndex = money.index(of: word) else { return }
         money.remove(at: removeIndex)
       // historyWords.insert(word, at: 0)
    }

    enum Topics: String {
        case cash = "Cash"
        case creditCard = "Credit cards"
        case otherAssets = "Other assets"
        
        static var allCases: [Topics] {
            [.cash, .creditCard, .otherAssets]
        }
    }
}
