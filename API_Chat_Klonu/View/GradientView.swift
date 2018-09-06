//
//  GradientView.swift
//  API_Chat_Klonu
//
//  Created by Demo on 6.09.2018.
//  Copyright © 2018 Demo. All rights reserved.
//

import UIKit

// Dikkat: Bu sınıfı kullanmak için gradient uygulayacağımız view i seçip attribute inspectordan sınıfını GradientView yapıyoruz.
@IBDesignable
class GradientView: UIView {

    // IBInspectable ı dinamik olarak storyboard da görebilmek için oluşturuyoruz.
    @IBInspectable var topColor: UIColor = #colorLiteral(red: 0.2901960784, green: 0.3019607843, blue: 0.8470588235, alpha: 1) {
        
        didSet {
            self.setNeedsLayout()
        }
        
    }
    
    @IBInspectable var bottomColor: UIColor = #colorLiteral(red: 0.1725490196, green: 0.831372549, blue: 0.8470588235, alpha: 1) {
        
        didSet {
            self.setNeedsLayout()
        }
    }
    
    override func layoutSubviews() {
        // A layer that draws a color gradient over its background color, filling the shape of the layer
        let gradientLayer = CAGradientLayer()
        // gradiente yukarıdaki color değişkenleri etki edecek
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        
        // iki boyutlu koordinat düzleminde 0,0 sağ üst köşe 0,1 sol alt köşe, 1,1 sağ alt köşedir.
        // Burada dikdörtgenin hipotenüsü boyunca gradient verilir.
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.frame = self.bounds
        // oluşturduğumuz gradient nesnemizi 0 yani ilk layer a ekliyoruz.
        self.layer.insertSublayer(gradientLayer, at: 0)
        
    }
    

}
