//
//  LoginInterfaces.swift
//  FireChat
//
//  Created by Ngoc Tuan Le on 12/9/18.
//  Copyright (c) 2018 LifeOfCoder. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

enum LoginNavigationOption {
    case channel
}

protocol LoginWireframeInterface: WireframeInterface {
    func navigate(to option: LoginNavigationOption)
}

protocol LoginViewInterface: ViewInterface {
}

protocol LoginPresenterInterface: PresenterInterface {
    func didSelectAnonymousSignIn(with name: String?)
}

protocol LoginInteractorInterface: InteractorInterface {
    func signInAnonymously(completion: @escaping LoginCompletionBlock)
}
