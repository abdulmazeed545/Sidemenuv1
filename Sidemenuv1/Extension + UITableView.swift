//
//  Extension + UITableView.swift
//  Sidemenuv1
//
//  Created by Shaik abdul mazeed on 10/04/21.
//

import Foundation
import UIKit

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! UITableViewCell
        
        cell.textLabel?.text = names[indexPath.row]
        cell.textLabel?.textColor = .systemOrange
        if indexPath.row == 1 || indexPath.row == 4{
            cell.accessoryType = .disclosureIndicator
        }
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
   func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        if indexPath.row == 1{
            navigationItem.setLeftBarButton(UIBarButtonItem(title: "< \(names[indexPath.row])", style: .done, target: self, action: #selector(myHome)), animated: true)
            names = languages
            tableView.reloadData()
            
        }else if indexPath.row == 4{
            navigationItem.setLeftBarButton(UIBarButtonItem(title: "< \(names[indexPath.row])", style: .done, target: self, action: #selector(myHome)), animated: true)
            names = about
            tableView.reloadData()
        }
    }
    @objc func myHome(sender:UIBarButtonItem){
        names = names1
        tableView.reloadData()
        sender.isEnabled = false
        
    }
    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        if names == languages{
            if indexPath.row == 1{
                return nil
            }else if indexPath.row == 4{
                return nil
            }
        }else if names == about{
            if indexPath.row == 1{
                return nil
            }else if indexPath.row == 4{
                return nil
            }
        }
        return indexPath
    }
}
