//
//  ViewController.swift
//  Sidemenuv1
//
//  Created by Shaik abdul mazeed on 07/04/21.
//

import UIKit
import SideMenu

class ViewController: UIViewController {
    
    var sideMenu:SideMenuNavigationController?
    
    @IBOutlet weak var tableView: UITableView!
    
    var names:[String] = []
    var names1:[String] = []
    var languages:[String] = []
    var about:[String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func menuTapped(_ sender: UIBarButtonItem) {

        sideMenu = SideMenuNavigationController(rootViewController: SideMenuController())
        sideMenu?.leftSide = true
        SideMenuManager.default.leftMenuNavigationController = sideMenu
        SideMenuManager.default.addPanGestureToPresent(toView: self.view)
        present(sideMenu!, animated: true)
    }
    
    @IBAction func ProfileButton(_ sender: UIBarButtonItem) {
        
        LocalService.shared.dataParse(resource: "profile", extension: "json") { [self] (profileData: Profile) in
            names = profileData.default.map{$0.title}
            names1 = names
            languages = profileData.languages.map{$0.title}
            about = profileData.about.map{$0.title}
        }
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.reloadData()
    }
    
}


