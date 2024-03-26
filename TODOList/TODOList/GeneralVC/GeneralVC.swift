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
    
    @IBOutlet weak var addTaskButton: UITabBarItem!
    
    var tasksIncomplete: [String] = [
    "Buy milk",
    "Buy eggs",
    "Buy meat",
    "Buy cola",
    ]
    
    var tasksСomplete: [String] = [
    
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTable()
        setupUIBar()
        setupDate()
    }
}


extension GeneralVC: UITableViewDelegate {
    
}

extension GeneralVC: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tasksIncomplete.count + tasksСomplete.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "\(GeneralTableViewCell.self)", for: indexPath) as? GeneralTableViewCell
        cell?.titleTask.text = tasksIncomplete[indexPath.row]
        
        
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Incomplete"
        } else if section == 1 {
            return "Complete"
        }
        return nil
    }
    
    @objc func nextButtonTapped() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let nextVC = storyboard.instantiateViewController(withIdentifier: "\(AddTaskVC.self)") as? AddTaskVC else { return }
        navigationController?.pushViewController(nextVC, animated: true)
    }
    
}

extension GeneralVC {
    func setupTable() {
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func setupUIBar() {
        let rightBarButton = UIBarButtonItem(title: "+", style: .plain, target: self, action: #selector(nextButtonTapped))
        
        navigationItem.rightBarButtonItem = rightBarButton
    }
}
