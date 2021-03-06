//
//  RoundDesign.swift
//  SantanderIOS
//
//  Created by Adauto Oliveira on 29/05/19.
//  Copyright © 2019 Adauto Oliveira. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable class RoundButton: UIButton {
    
    @IBInspectable var cornerRadius:CGFloat = 100 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    @IBInspectable var borderWidth:CGFloat = 6 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    @IBInspectable var borderColor:UIColor = UIColor.white {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
    
    
    
}
