//
//  CustomHeader.swift
//  testTaskPizza
//
//  Created by Андрей Банин on 16.1.24..
//

import UIKit

final class CustomHeader: UITableViewHeaderFooterView {
    
    //MARK: Properties
    
    static let reuseID = "CustomHeaderID"
    
    private lazy var clearView: UIView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIView())
    
    //MARK: Initial
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        
        self.contentView.backgroundColor = .mainBackgroundColor
        self.setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Private methods
    
    private func setupUI() {
        self.contentView.addSubview(clearView)
                
        NSLayoutConstraint.activate([
            self.clearView.topAnchor.constraint(equalTo: self.contentView.topAnchor),
            self.clearView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
            self.clearView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor),
            self.clearView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor),
        ])
    }
}
