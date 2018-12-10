//
//  UserService.swift
//  FireChat
//
//  Created by Ngoc Tuan Le on 12/10/18.
//  Copyright © 2018 LifeOfCoder. All rights reserved.
//

import Foundation
import FirebaseAuth

typealias LoginCompletionBlock = (User?, Error?) -> (Void)

class UserService {
    
    func signInAnonymously(completion: @escaping LoginCompletionBlock) {
        Auth.auth().signInAnonymously { (authResult, error) in
            var user: User?
            if let firUser = authResult?.user {
                user = User(uid: firUser.uid)
                user?.isAnonymous = true
            }
            
            completion(user, error)
        }

    }
    
}
