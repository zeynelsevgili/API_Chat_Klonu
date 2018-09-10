//
//  LoginVC.swift
//  API_Chat_Klonu
//
//  Created by Demo on 6.09.2018.
//  Copyright © 2018 Demo. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func closeBtnWasPressed(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func hesapYoksaWasPressed(_ sender: Any) {
        
        performSegue(withIdentifier: TO_REGISTER, sender: nil)
       
    }
    
}
