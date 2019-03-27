//
//  CircleButton.swift
//  Scribe
//
//  Created by Ricardo Herrera Petit on 3/26/19.
//  Copyright © 2019 Ricardo Herrera Petit. All rights reserved.
//

import UIKit


@IBDesignable
class CircleButton: UIButton {

    override func awakeFromNib() {
        setupView()
    }
    @IBInspectable var cornerRadius: CGFloat = 30.0 {
        didSet {
          setupView()
        }
    }
    
    override func prepareForInterfaceBuilder() {
        setupView()
    }
    
    func setupView() {
        layer.cornerRadius = cornerRadius
    }

}
