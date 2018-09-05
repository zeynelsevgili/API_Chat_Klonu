//
//  ChannelVC.swift
//  API_Chat_Klonu
//
//  Created by Demo on 5.09.2018.
//  Copyright © 2018 Demo. All rights reserved.
//

import UIKit

// rear view controller oluyor burası.
class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // menüden rear reveal edildiğinden nereye kadar sürüklenecek.
        // burada rear view frame genişliğinin 60 eksiğini giriyoruz
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
        
    
    }

 
}
