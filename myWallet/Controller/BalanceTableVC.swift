//
//  BalanceTableVC.swift
//  myWallet
//
//  Created by Богдан Плакущий on 20.03.2023.
//

import UIKit

class BalanceTableVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Balance"
        //navigationController?.navigationBar.prefersLargeTitles = true
        super.viewDidLoad()
        view.backgroundColor = Resouces.Colors.mainWhite
        tableView.register(BalanceUiView.self, forCellReuseIdentifier: "courseCell")
        // Change the row height if you want
        tableView.rowHeight = 70
        tableView.reloadData()
        // кнопка нав бара добавити ячейку
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Добавити", style: .plain, target: self, action: #selector( addPreesedButton))
        
    }
    
    @objc func addPreesedButton() {
        let contactAddNewBalance = AddNewRowBalance()
        navigationController?.pushViewController(contactAddNewBalance, animated: true)
    }

    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return DataManager.Topics.allCases.count
    }
    
    // return the title of sections
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        // let qqq = DataManager.categories.generateRandomAssets(DataManager.categories.money)
//
//        let air = [String](DataManager.categories.topics.keys).hashValue
//        let corst = DataManager.categories.money[section].nameAssets
//
//
//        return createCustomSection(contactName: "\(air)", contactDescription: "\(corst)")
        
        
        let topic = DataManager.Topics.allCases[section]
        
        return createCustomSection(contactName: topic.rawValue,
                                   contactDescription: "\(DataManager.categories.totalMoney(topic: topic))")
    }
    
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    // return the number of cells each section.
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        let topick = DataManager.categories.money
//                if topick.count == 0 {
//                    return DataManager.categories.money.count
//                } else if topick.count >= 1 {
//                    return topick.count } else {
//                        return 0
//                    }
        
        let topic = DataManager.Topics.allCases[section]
        return DataManager.categories.money(topic: topic).count
               
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let topic = DataManager.Topics.allCases[indexPath.section]
        let index = DataManager.categories.money(topic: topic)[indexPath.row]
        
        
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "courseCell", for: indexPath) as! BalanceUiView
        
//        let index = DataManager.categories.money[indexPath.row]
        cell.update(word: index.nameAssets, word1: String(index.cost), imageArray: index.imageAssets)
        return cell
    }
    
    // called when the cell is selected.
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            

            guard let word = DataManager.categories.money.first else {return}
            DataManager.categories.markAsDelete(word)
            
            tableView.deleteRows(at: [indexPath], with: .left)
        } else if editingStyle == .insert {
            self.tableView.reloadData()
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    
    
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    //}
    

}
