//
//  Contants.swift
//  API_Chat_Klonu
//
//  Created by Demo on 6.09.2018.
//  Copyright © 2018 Demo. All rights reserved.
//

import Foundation

let TO_LOGIN = "toLogin"
let TO_REGISTER = "toCreateAccount"
let UNWIND = "unwindToChannel"


typealias CompletionHandler = (_ Success: Bool) -> ()

// User Defaults

let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"


// URL Constants
let BASE_URL = "https://chatzeynel.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"



