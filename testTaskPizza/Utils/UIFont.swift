//
//  UIFont.swift
//  testTaskPizza
//
//  Created by Андрей Банин on 13.1.24..
//

import UIKit

extension UIFont {
    
    class var nameCityFont: UIFont {
        UIFont.systemFont(ofSize: 17, weight: .medium)
    }
    
    class var mainTextFont: UIFont {
        UIFont.systemFont(ofSize: 13, weight: .regular)
    }
    
    class var menuSectionTextSelectedFont: UIFont {
        UIFont.systemFont(ofSize: 13, weight: .bold)
    }
    
    class var nameFoodFont: UIFont {
        UIFont.systemFont(ofSize: 17, weight: .semibold)
    }
}
