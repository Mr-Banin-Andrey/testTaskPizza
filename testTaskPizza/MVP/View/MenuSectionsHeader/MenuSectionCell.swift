//
//  MenuSectionCell.swift
//  testTaskPizza
//
//  Created by Андрей Банин on 13.1.24..
//

import UIKit

class MenuSectionCell: UICollectionViewCell {
    
    //MARK: Properties
    
    static let reuseID = "MenuSectionCellID"
    
    private lazy var nameSectionLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.font = .mainTextFont
        $0.textAlignment = .center
        $0.textColor = .menuSectionTextColor
        $0.layer.borderColor = UIColor.menuSectionBackgroundColor.cgColor
        $0.layer.cornerRadius = 16.5
        $0.layer.masksToBounds = true
        $0.layer.borderWidth = 1
        return $0
    }(UILabel())
    
    //MARK: Initial
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var isSelected: Bool {
        didSet {
            if self.isSelected {
                self.nameSectionLabel.textColor = .menuSectionTextSelectedColor
                self.nameSectionLabel.backgroundColor = .menuSectionBackgroundSelectedColor
                self.nameSectionLabel.layer.borderColor = UIColor.menuSectionBackgroundSelectedColor.cgColor
                self.nameSectionLabel.font = .menuSectionTextSelectedFont
            } else {
                self.nameSectionLabel.textColor = .menuSectionTextColor
                self.nameSectionLabel.backgroundColor = .clear
                self.nameSectionLabel.layer.borderColor = UIColor.menuSectionBackgroundColor.cgColor
                self.nameSectionLabel.font = .mainTextFont
            }
        }
    }
    
    //MARK: Methods
    
    func setupCell(text: String) {
        self.nameSectionLabel.text = text
    }
    
    
    private func setupConstraints() {
        self.contentView.addSubview(self.nameSectionLabel)
        
        NSLayoutConstraint.activate([
            self.nameSectionLabel.topAnchor.constraint(equalTo: self.contentView.topAnchor),
            self.nameSectionLabel.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 0),
            self.nameSectionLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -8),
            self.nameSectionLabel.heightAnchor.constraint(equalToConstant: 32),
        ])
    }
}
