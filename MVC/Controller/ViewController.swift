//
//  ViewController.swift
//  MVC
//
//  Created by Kelvin Tan on 11/24/18.
//  Copyright © 2018 Kelvin Tan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    private var lists: [Food] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customizeTableView()
        customizeData()
    }
    
    func customizeTableView(){
        tableView.dataSource = self
    }
    
    func customizeData(){
        lists = [Food(name: "Fried Rice", price: "$7.99"),
                 Food(name: "Fried Noodle", price: "$6.99"),
                 Food(name: "Spaghetti", price: "$8.99"),
                 Food(name: "Fish N Chip", price: "$9.99"),]
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lists.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = lists[indexPath.row].name
        cell.detailTextLabel?.text = lists[indexPath.row].price
        
        return cell
    }
}
