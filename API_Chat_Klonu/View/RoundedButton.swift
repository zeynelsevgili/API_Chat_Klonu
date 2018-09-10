//
//  RoundedButton.swift
//  API_Chat_Klonu
//
//  Created by Demo on 10.09.2018.
//  Copyright © 2018 Demo. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedButton: UIButton {

    
    @IBInspectable var cornerRadius: CGFloat = 3.0 {
        
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
        
    }
    
    override func awakeFromNib() {
        self.setupView()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.setupView()
    }
    
    
    
    func setupView() {
        
        self.layer.cornerRadius = cornerRadius
        
    }
    
    
}
