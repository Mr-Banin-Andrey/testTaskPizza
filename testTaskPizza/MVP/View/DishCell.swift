//
//  DishCell.swift
//  testTaskPizza
//
//  Created by Андрей Банин on 14.1.24..
//

import UIKit

final class DishCell: UITableViewCell {
    
    //MARK: Properties
    
    static let reuseID = "DishCellID"
    
    //MARK: Initial
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
    }
        
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Methods
    
    
}
