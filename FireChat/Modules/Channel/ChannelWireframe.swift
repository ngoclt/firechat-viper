//
//  ChannelWireframe.swift
//  FireChat
//
//  Created by Ngoc Tuan Le on 12/10/18.
//  Copyright (c) 2018 LifeOfCoder. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

final class ChannelWireframe: BaseWireframe {

    // MARK: - Private properties -

    private let _storyboard = UIStoryboard(name: "Channel", bundle: nil)

    // MARK: - Module setup -

    init() {
        let moduleViewController: ChannelViewController = _storyboard.instantiateViewController()
        super.init(viewController: moduleViewController)
        
        let interactor = ChannelInteractor()
        let presenter = ChannelPresenter(wireframe: self, view: moduleViewController, interactor: interactor)
        moduleViewController.presenter = presenter
    }

}

// MARK: - Extensions -

extension ChannelWireframe: ChannelWireframeInterface {

    func navigate(to option: ChannelNavigationOption) {
    }
}
