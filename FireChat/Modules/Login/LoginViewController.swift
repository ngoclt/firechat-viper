//
//  LoginViewController.swift
//  FireChat
//
//  Created by Ngoc Tuan Le on 12/9/18.
//  Copyright (c) 2018 LifeOfCoder. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

final class LoginViewController: UIViewController {

    // MARK: - Public properties -

    var presenter: LoginPresenterInterface!
    
    @IBOutlet private weak var displayNameTextField: UITextField!
    @IBOutlet private weak var signInButtonBottomMargin: NSLayoutConstraint!
    
    private var _bottomMarginWithoutKeyboard: CGFloat = 0
    
    // MARK: - Lifecycle -

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        _bottomMarginWithoutKeyboard = signInButtonBottomMargin.constant
        _registerForKeyboardNotifications()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        NotificationCenter.default.removeObserver(self)
    }
    
    // MARK: Actions
	
    @IBAction private func signInButtonActionHandler() {
        presenter.didSelectAnonymousSignIn(with: displayNameTextField.text)
    }
    
    // MARK: Private
    
    private func _registerForKeyboardNotifications() {
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(_keyboardWillShow(_:)),
            name: UIResponder.keyboardWillShowNotification,
            object: nil
        )
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(_keyboardWillHide(_:)),
            name: UIResponder.keyboardWillHideNotification,
            object: nil
        )
    }
    
    @objc private func _keyboardWillShow(_ notification: Notification) {
        let userInfo = notification.userInfo!
        let keyboardHeight = (userInfo[UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue.height
        
        view.layoutIfNeeded()
        signInButtonBottomMargin.constant = keyboardHeight
        view.setNeedsUpdateConstraints()
        
        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
        }
    }
    
    @objc private func _keyboardWillHide(_ notification: Notification) {
        view.layoutIfNeeded()
        signInButtonBottomMargin.constant = _bottomMarginWithoutKeyboard
        view.setNeedsUpdateConstraints()
        
        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
        }
    }
}

// MARK: - Extensions -

extension LoginViewController: LoginViewInterface {
    
}

extension LoginViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        displayNameTextField.resignFirstResponder()
        return false
    }
}

