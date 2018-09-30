//
//  LoginInteractor.swift
//  FireChat
//
//  Created by Ngoc Tuan Le on 9/30/18.
//  Copyright (c) 2018 LifeOfCoder. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol LoginBusinessLogic
{
  func doSomething(request: Login.FacebookLogin.Request)
}

protocol LoginDataStore
{
  //var name: String { get set }
}

class LoginInteractor: LoginBusinessLogic, LoginDataStore
{
  var presenter: LoginPresentationLogic?
  var worker: LoginWorker?
  //var name: String = ""
  
  // MARK: Do something
  
  func doSomething(request: Login.FacebookLogin.Request)
  {
    worker = LoginWorker()
    worker?.doSomeWork()
    
    let response = Login.FacebookLogin.Response()
    presenter?.presentSomething(response: response)
  }
}
