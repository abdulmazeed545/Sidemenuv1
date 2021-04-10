//
//  SideMenuController.swift
//  Sidemenuv1
//
//  Created by Shaik abdul mazeed on 07/04/21.
//

import UIKit

class SideMenuController: UITableViewController {

    var names:[String] = []
    var names1:[String] = []
    var languages:[String] = []
    var about:[String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataParse()
       
        tableView.backgroundColor = .cyan
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.reloadData()
        
      
    }
    func dataParse(){
        
        LocalService.shared.dataParse(resource: "Leftmenu", extension: "json") { [self] (ProfileData: LeftMenu) in
            names = ProfileData.bottom
        }
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return names.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Configure the cell...

        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as UITableViewCell
        cell.textLabel?.text = names[indexPath.row]
        cell.textLabel?.textColor = .systemRed

        
        return cell
    }
    override func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        if indexPath.row == 0{
            names = ["mazeed", "Shahina"]
            tableView.reloadData()
            print("checkmark")
        }
    }
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        if indexPath.row == 1{
            tableView.allowsSelection = false
            tableView.reloadData()
        }
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }

}
