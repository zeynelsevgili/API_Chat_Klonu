//
//  LoginVC.swift
//  API_Chat_Klonu
//
//  Created by Demo on 6.09.2018.
//  Copyright © 2018 Demo. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    @IBOutlet weak var usernameTxtField: UITextField!
    @IBOutlet weak var passwordTxtField: UITextField!
    
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
    
    @IBAction func girisWasPressed(_ sender: Any) {
        
        guard let email = usernameTxtField.text, usernameTxtField.text != "" else { return }
        guard let pass = passwordTxtField.text, passwordTxtField.text != "" else { return }
        
        AuthService.instance.loginUser(email: email, password: pass) { (success) in
            
            if success {
                print("giriş başarıyla yapıldı")
            }
        }
        
    }
    
    
}
