//
//  UIColor.swift
//  testTaskPizza
//
//  Created by Андрей Банин on 13.1.24..
//

import UIKit

extension UIColor {
    
    //MARK: - Main
    
    class var mainBackgroundColor: UIColor {
        UIColor(named: "mainBackground") ?? lightGray
    }
    
    //MARK: - MenuSectionsHeader
    
    class var menuSectionBackgroundColor: UIColor {
        UIColor(named: "menuSectionBackgroundColor") ?? systemPink
    }
    
    class var menuSectionBackgroundSelectedColor: UIColor {
        UIColor(named: "menuSectionBackgroundSelectedColor") ?? systemRed
    }
    
    class var menuSectionTextColor: UIColor {
        UIColor(named: "menuSectionTextColor") ?? systemPink
    }
    
    class var menuSectionTextSelectedColor: UIColor {
        UIColor(named: "menuSectionTextSelectedColor") ?? systemRed
    }
}
