//
//  ChatVC.swift
//  API_Chat_Klonu
//
//  Created by Demo on 5.09.2018.
//  Copyright © 2018 Demo. All rights reserved.
//

import UIKit
// front view controller kısmı oluyor burası
class ChatVC: UIViewController {

    
    @IBOutlet weak var menuBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // selector içinde bir fonksiyon veya metod çağrılır.
        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        
        // front view deki menüye drag özelliği kazandırıyoruz. 
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
        
      
    }


}
