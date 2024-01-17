//
//  EventCell.swift
//  testTaskPizza
//
//  Created by Андрей Банин on 13.1.24..
//

import UIKit

final class EventCollectionCell: UICollectionViewCell {
    
    //MARK: Properties
    
    static let reuseID = "EventCellID"
    
    private lazy var pictureImage: UIImageView = {
         $0.translatesAutoresizingMaskIntoConstraints = false
         $0.contentMode = .scaleToFill
         $0.layer.cornerRadius = 15
         $0.clipsToBounds = true
         return $0
    }(UIImageView())
    
    //MARK: Initial
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Public methods
    
    func setupCell(_ picture: UIImage) {
        self.pictureImage.image = picture
    }
    
    //MARK: Private methods
    
    private func setupUI() {
        self.contentView.addSubview(self.pictureImage)

        NSLayoutConstraint.activate([
            self.pictureImage.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 0),
            self.pictureImage.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 0),
            self.pictureImage.heightAnchor.constraint(equalToConstant: 112),
            self.pictureImage.widthAnchor.constraint(lessThanOrEqualTo: self.contentView.widthAnchor, constant: -8),
        ])
    }
}
