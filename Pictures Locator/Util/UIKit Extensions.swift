//
//  UIKit Extensions.swift
//  Pictures Locator
//
//  Created by Mihail Șalari on 8/16/16.
//  Copyright © 2016 Mihail Șalari. All rights reserved.
//

import UIKit

extension UIButton {
    
    @IBInspectable var cornerRadiusButton: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
}


extension UIView {
    
    @IBInspectable var cornerRadiusView: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
}


