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
        //view.backgroundColor = .brown
        tableView.register(BalanceUiView.self, forCellReuseIdentifier: "courseCell")
        // Change the row height if you want
        
        tableView.reloadData()
        
        // кнопка нав бара добавити ячейку
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Добавити", style: .plain, target: self, action: #selector( addPreesedButton))
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    @objc func addPreesedButton() {
        let contactAddNewBalance = AddNewRowBalance()
        navigationController?.pushViewController(contactAddNewBalance, animated: true)
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return DataManager.Topics.allCases.count
        //
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
//    override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
//
//        let topic = DataManager.Topics.allCases[section]
//        return createCustomSection(contactName: "\(DataManager.categories.totalMoney(topic: topic))",
//                                   contactDescription: topic.rawValue)
//    }
//    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
//        return 50
//    }
    
    // return the title of sections
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {

        let topic = DataManager.Topics.allCases[section]
        return createCustomSection(contactName: "\(DataManager.categories.totalMoney(topic: topic))",
                                   contactDescription: topic.rawValue)
    }


    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
       
        return 40
    }
    
    // return the number of cells each section.
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let topic = DataManager.Topics.allCases[section]
                if DataManager.categories.money(topic: topic).count == 0 {
                    return DataManager.categories.money.count
                } else if DataManager.categories.money(topic: topic).count >= 1 {
                    return DataManager.categories.money(topic: topic).count } else {
                        return 0
                    }
    
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "courseCell", for: indexPath) as! BalanceUiView
        
        let topic = DataManager.Topics.allCases[indexPath.section]
        let index = DataManager.categories.money(topic: topic)[indexPath.row]
        cell.updateBalance(word: index.nameAssets, word1: String(index.cost), imageArray: index.imageAssets)
        return cell
    }
    
    // called when the cell is selected.
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        
    }
    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            

            let del = DataManager.categories.money[indexPath.row]
            DataManager.categories.markAsDelete(del)
            let sec = DataManager.Topics.allCases[indexPath.row]
            
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
