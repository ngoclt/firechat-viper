//
//  User.swift
//  FireChat
//
//  Created by Ngoc Tuan Le on 12/10/18.
//  Copyright © 2018 LifeOfCoder. All rights reserved.
//

import Foundation

struct User {
    var isAnonymous: Bool = false
    
    var uid: String
    var email: String?
    var authToken: String?
    
    init(uid: String) {
        self.uid = uid
    }
}
