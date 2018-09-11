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
    @IBOutlet weak var registerBtn: RoundedButton!
    
    
    // variables
    var avatarName = "profileDefault"
    var avatarColor = "[0.5 0.5 0.5 1]"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    // unwind segue in action kısmı burada gerçekleşiyor.
    @IBAction func closeBtnWasPressed(_ sender: Any) {
        

        performSegue(withIdentifier: UNWIND, sender: nil)
        
    }
    
    @IBAction func createAccntWasPressed(_ sender: Any) {
        
        guard let userName = userNameTxtField.text, userNameTxtField.text != "" else { return }
        guard let email = emailTxt.text, emailTxt.text != "" else { return }
        guard let pass = passTxt.text, passTxt.text != "" else { return }
        
        AuthService.instance.registerUser(email: email, password: pass) { (success) in
            if success {
               
                AuthService.instance.loginUser(email: email, password: pass, completion: { (success) in
                    
                    if success {
                        
                        AuthService.instance.createUser(name: userName, email: email, avatarName: self.avatarName, avatarColor: self.avatarColor, completion: { (createSuccess) in
                            
                            if createSuccess {
                                
                                self.performSegue(withIdentifier: UNWIND, sender: nil)
                                print(UserDataService.instance.name,UserDataService.instance.avatarName)
                                
                            }
                            
                        })
                        
                    }
                })
            }
        }
    }
    @IBAction func avatarSecWasPressed(_ sender: Any) {
    }
    @IBAction func arkaPlanSecWasPressed(_ sender: Any) {
    }
    
    
  
}
