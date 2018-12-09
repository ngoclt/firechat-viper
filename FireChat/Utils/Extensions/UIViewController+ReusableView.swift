//
//  UIViewController+ReusableView.swift
//  FireChat
//
//  Created by Ngoc Tuan Le on 12/7/18.
//  Copyright © 2018 LifeOfCoder. All rights reserved.
//

import UIKit

extension UIViewController: ReusableView { }

extension UIStoryboard {
    func instantiateViewController<T: UIViewController>() -> T {
        return instantiateViewController(withIdentifier: String(describing: T.self)) as! T
    }
}
