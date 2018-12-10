//
//  PasswordValidator.swift
//  FireChat
//
//  Created by Ngoc Tuan Le on 12/9/18.
//  Copyright © 2018 LifeOfCoder. All rights reserved.
//

import UIKit

class PasswordValidator: StringValidator {

    private let _minLength: UInt

    init(minLength: UInt) {
        _minLength = minLength
    }

    func isValid(_ value: String) -> Bool {
        if let length = UInt(exactly: value.count) {
            return (length >= _minLength)
        }
        return false
    }

}
