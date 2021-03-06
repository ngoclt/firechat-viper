//
//  ChannelInterfaces.swift
//  FireChat
//
//  Created by Ngoc Tuan Le on 12/10/18.
//  Copyright (c) 2018 LifeOfCoder. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

enum ChannelNavigationOption {
}

protocol ChannelWireframeInterface: WireframeInterface {
    func navigate(to option: ChannelNavigationOption)
}

protocol ChannelViewInterface: ViewInterface {
}

protocol ChannelPresenterInterface: PresenterInterface {
}

protocol ChannelInteractorInterface: InteractorInterface {
}
