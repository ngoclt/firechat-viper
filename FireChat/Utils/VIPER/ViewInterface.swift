//
//  ViewInterface.swift
//  FireChat
//
//  Created by Ngoc Tuan Le on 12/9/18.
//  Copyright © 2018 LifeOfCoder. All rights reserved.
//

import UIKit
import SVProgressHUD

protocol ViewInterface: class {
    func showProgressHUD()
    func hideProgressHUD()
}

extension ViewInterface {
    
    func showProgressHUD() {
        SVProgressHUD.show()
    }
    
    func hideProgressHUD() {
        SVProgressHUD.dismiss()
    }
}
