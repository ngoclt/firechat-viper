//
//  SVProgressHudInitializer.swift
//  FireChat
//
//  Created by Ngoc Tuan Le on 12/7/18.
//  Copyright © 2018 LifeOfCoder. All rights reserved.
//

import UIKit
import SVProgressHUD

class SVProgressHudInitializer: Initializable {
    
    func performInitialization() {
        SVProgressHUD.setForegroundColor(.white)
        SVProgressHUD.setDefaultStyle(.dark)
    }
}
