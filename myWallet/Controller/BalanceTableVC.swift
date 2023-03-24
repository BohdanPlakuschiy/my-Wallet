//
//  BalanceTableVC.swift
//  myWallet
//
//  Created by Богдан Плакущий on 20.03.2023.
//

import UIKit

class BalanceTableVC: UITableViewController {

    private var setAssets: [[Accountant]] = []
    private var arayAssets: [Accountant] = []
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()

        
        title = "Balance"
        
        super.viewDidLoad()
        view.backgroundColor = .white

    
        // кнопка видалення
        //self.navigationItem.rightBarButtonItem = self.editButtonItem
        // You must register the cell with a reuse identifier
        tableView.register(BalanceUiView.self, forCellReuseIdentifier: "courseCell")
        // Change the row height if you want
        tableView.rowHeight = 60
        // This will remove any empty cells that are below your data filled cells
        tableView.tableFooterView = UIView()
        arayAssets = DataManager.categories.addAssets()
        setAssets = DataManager.categories.generateRandomAssets()
        tableView.reloadData()
        
        // кнопка нав бара добавити ячейку
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Добавити", style: .plain, target: self, action: #selector( addPreesedButton))
        
    }
    
    func setupView() {
        createCustomNavigationBar()
        // день недели
        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        let dayOfTheWeekString = dateFormatter.string(from: date)
        
        // месяц
        dateFormatter.dateFormat = "LLLL"
        let monthString = dateFormatter.string(from: date)
        
        //год
        dateFormatter.dateFormat = "yyyy"
        let yearString = dateFormatter.string(from: date)
        
        // день месяцф
        let calendar = Calendar.current
        let components = calendar.dateComponents([.day], from: date)
        guard let  dayOfMonth = components.day else { return  }
        
        let dimileter = "|"
        
        let customTitleView = createCustomTitleView(contactName: "\(dayOfTheWeekString.capitalized)",
                                                    contactDescription: "\(monthString.capitalized) \(yearString)",
                                                    contactDay: "\(dayOfMonth)", delimiter: "\(dimileter)")
        navigationItem.titleView = customTitleView
    }
    
    
    @objc func addPreesedButton() {
        let contactAddNewBalance = AddNewRowBalance()
        navigationController?.pushViewController(contactAddNewBalance, animated: true)
    }

    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return setAssets.count
    }
    
    
    
    // return the title of sections
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let qqq = setAssets[section].first
        let header = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 40))
        header.backgroundColor = .systemGray

        var label: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.font = UIFont.systemFont(ofSize: 20)
            return label
        }()
        header.addSubview(label)
        
        
        let label1 = UILabel(frame: CGRect(x: 20 ,
                                          y: 5,
                                          width: header.frame.size.width,
                                          height: header.frame.size.height-10))
        header.addSubview(label1)
        
        label.trailingAnchor.constraint(equalTo: header.trailingAnchor, constant: -20).isActive = true
        label.topAnchor.constraint(equalTo: header.topAnchor, constant: 10).isActive = true
  
        label.text = qqq?.nameAssets
        label1.text = qqq?.assets
        label1.font = .systemFont(ofSize: 22, weight: .regular)
        
        return header
    }
    
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    // return the number of cells each section.
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let topick = setAssets[section]
                if topick.count == 0 {
                    return arayAssets.count
                } else if topick.count >= 1 {
                    return topick.count } else {
                        return 0
                    }
               
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "courseCell", for: indexPath) as! BalanceUiView
        
        let index = setAssets[indexPath.section][indexPath.row]
        cell.courseName1.text = String(index.cost)
        cell.courseName.text = index.nameAssets
       
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
            


            setAssets[indexPath.section].remove(at: indexPath.row)
            
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
