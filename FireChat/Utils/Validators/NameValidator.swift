//
//  NameValidator.swift
//  FireChat
//
//  Created by Ngoc Tuan Le on 12/10/18.
//  Copyright © 2018 LifeOfCoder. All rights reserved.
//

import Foundation

class NameValidator: StringValidator {
    
    private let _minLength: UInt
    private let _maxLength: UInt
    
    init(minLength: UInt, maxLength: UInt) {
        _minLength = minLength
        _maxLength = maxLength
    }
    
    func isValid(_ value: String) -> Bool {
        if let length = UInt(exactly: value.count) {
            return (length >= _minLength && length <= _maxLength)
        }
        return false
    }
    
}

