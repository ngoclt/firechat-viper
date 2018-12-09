//
//  ThemeInitializer.swift
//  FireChat
//
//  Created by Ngoc Tuan Le on 12/7/18.
//  Copyright © 2018 LifeOfCoder. All rights reserved.
//

import UIKit

class ThemeInitializer: Initializable {
    
    func performInitialization() {
        UINavigationBar.appearance(whenContainedInInstancesOf: [UINavigationController.self]).tintColor = .white
        UINavigationBar.appearance(whenContainedInInstancesOf: [UINavigationController.self]).barTintColor = .blue
        UINavigationBar.appearance(whenContainedInInstancesOf: [UINavigationController.self]).titleTextAttributes = [
            .foregroundColor: UIColor.white
        ]
    }
}
