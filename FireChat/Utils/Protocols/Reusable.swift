//
//  Reusable.swift
//  FireChat
//
//  Created by Ngoc Tuan Le on 12/7/18.
//  Copyright © 2018 LifeOfCoder. All rights reserved.
//

import Foundation

protocol Reusable: class {
    static var reuseIdentifier: String { get }
}

extension Reusable {
    static var reuseIdentifier: String {
        /// Use the class's name as an identifier
        return String(describing: Self.self)
    }
}
