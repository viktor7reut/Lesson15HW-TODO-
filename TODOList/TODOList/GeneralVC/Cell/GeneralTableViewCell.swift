//
//  GeneralTableViewCell.swift
//  TODOList
//
//  Created by Виктор Реут on 17.03.24.
//

import UIKit

class GeneralTableViewCell: UITableViewCell {
    @IBOutlet weak var checkBox: UIButton!
    @IBOutlet weak var titleTask: UILabel!
    @IBOutlet weak var categoriesImage: UIImageView!
    @IBOutlet weak var descriptionCategoriesLabel: UILabel!
    
    //??
    
    @IBAction func checkboxTapped(_ sender: UIButton) {
        if sender.isSelected == true {
            sender.setImage(UIImage(named: "square.fill"), for: .normal)
        } else {
            sender.setImage(UIImage(named: "square"), for: .normal)
        }
    }
}
