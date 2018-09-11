//
//  UserDataService.swift
//  API_Chat_Klonu
//
//  Created by Demo on 11.09.2018.
//  Copyright © 2018 Demo. All rights reserved.
//

import Foundation

class UserDataService {
    
    static let instance = UserDataService()
    
    // diğer sınıflar "get" edebilir fakat "set" edemezler
     public private(set) var id = ""
     public private(set) var avatarColor = ""
     public private(set) var avatarName = ""
     public private(set) var email = ""
     public private(set) var name = ""
    
    
    func setUserData(id: String, avatarColor: String, avatarName: String, email: String, name: String) {
        
        self.id = id
        self.avatarColor = avatarColor
        self.avatarName = avatarName
        self.email = email
        self.name = name
    }
    
    func updateAvatarName(avatarName: String) {
        self.avatarName = avatarName
    }
    
}
