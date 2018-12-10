//
//  RootRouter.swift
//  FireChat
//
//  Created by Ngoc Tuan Le on 12/9/18.
//  Copyright © 2018 LifeOfCoder. All rights reserved.
//

import UIKit

class RootRouter: RootWireframe {
    
    func presentLoginScreen(in window: UIWindow) {
        let navigationController = UINavigationController()
        navigationController.isNavigationBarHidden = true
        navigationController.setRootWireframe(LoginWireframe())
        window.rootViewController = navigationController
        
        window.makeKeyAndVisible()
    }
}
