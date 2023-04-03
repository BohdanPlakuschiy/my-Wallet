//
//  BadgetVC.swift
//  myWallet
//
//  Created by Богдан Плакущий on 03.04.2023.
//

import UIKit

class BudgetVC: UIViewController {
    
    var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTitle()
        setupCollectionView()
        
    }
    
    func setupTitle() {
        title = "Budget"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    func setupCollectionView() {
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: setupFlowLayout())
        
        view.addSubview(collectionView)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)
        ])
        
        collectionView.dataSource = self
        collectionView.register(Budget.self, forCellWithReuseIdentifier: "\(Budget.self)")
        collectionView.register(HeaderReusaleView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "\(HeaderReusaleView.self)")
    }
    
    func setupFlowLayout() -> UICollectionViewFlowLayout {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = .init(width: 60, height: 60)
//        layout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
//        layout.minimumLineSpacing = 10
//        layout.minimumInteritemSpacing = 10
        layout.sectionInset = .init(top: 20, left: 20, bottom: 20, right: 20)
        layout.headerReferenceSize = .init(width: view.frame.size.width, height: 60)
        
        return layout
    }
    
}

extension BudgetVC: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        DataManager.Topics.allCases.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let topic = DataManager.Topics.allCases[section]
        if DataManager.categories.money(topic: topic).count == 0 {
            return DataManager.categories.money.count
        } else if DataManager.categories.money(topic: topic).count >= 1 {
            return DataManager.categories.money(topic: topic).count } else {
                return 0
            }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(Budget.self)", for: indexPath) as? Budget else {
            return UICollectionViewCell()
        }
        let topic = DataManager.categories.money[indexPath.row]
        cell.updateBudget(imageArray: topic.imageAssets)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch kind {
        case UICollectionView.elementKindSectionHeader:
            guard let view = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "\(HeaderReusaleView.self)", for: indexPath) as? HeaderReusaleView else { return UICollectionReusableView() }
            view.titleLabelHeaderBudget.text = DataManager.Topics.allCases[indexPath.section].rawValue
            return view
            
        default: return UICollectionReusableView()
        }
    }
}
