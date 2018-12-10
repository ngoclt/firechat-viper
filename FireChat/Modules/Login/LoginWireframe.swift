//
//  LoginWireframe.swift
//  FireChat
//
//  Created by Ngoc Tuan Le on 12/9/18.
//  Copyright (c) 2018 LifeOfCoder. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

final class LoginWireframe: BaseWireframe {

    // MARK: - Private properties -

    private let storyboard = UIStoryboard(name: "Login", bundle: nil)

    // MARK: - Module setup -

    init() {
        let moduleViewController: LoginViewController = storyboard.instantiateViewController()
        super.init(viewController: moduleViewController)
        
        let interactor = LoginInteractor()
        let presenter = LoginPresenter(wireframe: self, view: moduleViewController, interactor: interactor)
        moduleViewController.presenter = presenter
    }

}

// MARK: - Extensions -

extension LoginWireframe: LoginWireframeInterface {

    func navigate(to option: LoginNavigationOption) {
    }
}
