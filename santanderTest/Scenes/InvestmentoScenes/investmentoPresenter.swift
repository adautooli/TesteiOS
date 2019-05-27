//
//  investmentoPresenter.swift
//  santanderTest
//
//  Created by Adauto Oliveira on 27/05/19.
//  Copyright (c) 2019 Adauto Oliveira. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol investmentoPresentationLogic
{
  func presentSomething(response: investmento.Something.Response)
}

class investmentoPresenter: investmentoPresentationLogic
{
  weak var viewController: investmentoDisplayLogic?
  
  // MARK: Do something
  
  func presentSomething(response: investmento.Something.Response)
  {
    let viewModel = investmento.Something.ViewModel()
    viewController?.displaySomething(viewModel: viewModel)
  }
}