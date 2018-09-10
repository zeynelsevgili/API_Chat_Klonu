//
//  CreateAccountVC.swift
//  API_Chat_Klonu
//
//  Created by Demo on 6.09.2018.
//  Copyright © 2018 Demo. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    
    @IBOutlet weak var userNameTxtField: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passTxt: UITextField!
    @IBOutlet weak var userImg: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    // unwind segue in action kısmı burada gerçekleşiyor.
    @IBAction func closeBtnWasPressed(_ sender: Any) {
        

        performSegue(withIdentifier: UNWIND, sender: nil)
        
    }
    
    @IBAction func createAccntWasPressed(_ sender: Any) {
        
        guard let email = emailTxt.text, emailTxt.text != "" else { return }
        guard let pass = passTxt.text, passTxt.text != "" else { return }
        
        AuthService.instance.registerUser(email: email, password: pass) { (success) in
            
            if success {
                
                print("Başarıyla kayıt yapıldı")
            }
        }
        
        
    }
    @IBAction func avatarSecWasPressed(_ sender: Any) {
    }
    @IBAction func arkaPlanSecWasPressed(_ sender: Any) {
    }
    
    
  
}
