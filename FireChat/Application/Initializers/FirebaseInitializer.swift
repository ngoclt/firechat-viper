//
//  FirebaseInitializer.swift
//  FireChat
//
//  Created by Ngoc Tuan Le on 12/7/18.
//  Copyright © 2018 LifeOfCoder. All rights reserved.
//

import Foundation
import Firebase

class FirebaseInitializer: Initializable {
    
    func performInitialization() {
        FirebaseApp.configure()
    }
}
