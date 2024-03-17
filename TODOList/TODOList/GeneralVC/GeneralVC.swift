//
//  GeneralVC.swift
//  TODOList
//
//  Created by Виктор Реут on 17.03.24.
//

import UIKit

class GeneralVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var countsTasks: UILabel!
    
    var tasks: [String] = [
    "Buy milk",
    "Buy eggs",
    "Buy meat",
    "Buy cola",
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTable()
        
    }
}


extension GeneralVC: UITableViewDelegate {
    
}

extension GeneralVC: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "\(GeneralTableViewCell.self)", for: indexPath) as? GeneralTableViewCell
        cell?.titleTask.text = tasks[indexPath.row]
        
        
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Incomplete"
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "Completed"
    }
    
}

extension GeneralVC {
    func setupTable() {
        tableView.dataSource = self
        tableView.delegate = self
    }
}
