//
//  DateFormatter.swift
//  TODOList
//
//  Created by Виктор Реут on 26.03.24.
//

import UIKit

extension GeneralVC {
    func setupDate() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = DateFormatter.Style.medium
        dateFormatter.timeStyle = DateFormatter.Style.medium
        dateFormatter.locale = Locale.current
        
        let currentDate = Date()
        
        let dateString = dateFormatter.string(from: currentDate)
        
        dateLabel.text = dateString
    }
}
