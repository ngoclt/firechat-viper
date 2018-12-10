//
//  EmailValidator.swift
//  FireChat
//
//  Created by Ngoc Tuan Le on 12/9/18.
//  Copyright © 2018 LifeOfCoder. All rights reserved.
//

import UIKit

class EmailValidator: StringValidator {

    func isValid(_ value: String) -> Bool {
        return (value.count > 3 && value.contains("@"))
    }

}
