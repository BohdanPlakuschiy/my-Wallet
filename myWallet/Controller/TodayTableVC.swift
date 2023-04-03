//
//  TodayTableVC.swift
//  myWallet
//
//  Created by Богдан Плакущий on 20.03.2023.
//

import UIKit

class TodayTableVC: UITableViewController {



        override func viewDidLoad() {
            super.viewDidLoad()
            title = "Today"
            view.backgroundColor = Resouces.Colors.mainWhite
            navigationController?.navigationBar.prefersLargeTitles = true
            tableView.register(TodayUiView.self, forCellReuseIdentifier: "Cell")
            setupView()
            setingsNavIteam()
            

            // Uncomment the following line to preserve selection between presentations
            // self.clearsSelectionOnViewWillAppear = false

            // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
            // self.navigationItem.rightBarButtonItem = self.editButtonItem
        }
    
    func setingsNavIteam() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: Resouces.Images.todayRightBarButtonItem, style: .done, target: self, action: #selector(buttonAction))
    }
    
    @objc private func buttonAction() {
           let postViewController = Reports()
           self.navigationController?.pushViewController(postViewController, animated: true)

       }
    
    func setupView() {
        //createCustomNavigationBar()
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

        // MARK: - Table view data source

        override func numberOfSections(in tableView: UITableView) -> Int {
            // #warning Incomplete implementation, return the number of sections
            return 0
        }

        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            // #warning Incomplete implementation, return the number of rows
            return 0
        }

        /*
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

            // Configure the cell...

            return cell
        }
        */

        /*
        // Override to support conditional editing of the table view.
        override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
            // Return false if you do not want the specified item to be editable.
            return true
        }
        */

        /*
        // Override to support editing the table view.
        override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
            if editingStyle == .delete {
                // Delete the row from the data source
                tableView.deleteRows(at: [indexPath], with: .fade)
            } else if editingStyle == .insert {
                // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
            }
        }
        */

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

    }
