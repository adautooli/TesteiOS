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
  
  func presentSomething(response: investmento.Something.Response){
    
    var displayInvests: [investmento.Something.ViewModel.DiplayedInvest] = []
    for screen in response.screen{
        let displayInvest = investmento.Something.ViewModel.DiplayedInvest(title: screen.title, fundName: screen.fundName, whatIs: screen.whatIs, definition: screen.definition, riskTitle: screen.riskTitle, risk: screen.risk, infoTitle: screen.infoTitle, fund: screen.found, CDI: screen.CDI, name: screen.name, data: screen.data)
        displayInvests.append(displayInvest)
    }
    let viewModel = investmento.Something.ViewModel(diplayedInvest: displayInvests)
    viewController?.displaySomething(viewModel: viewModel)
  }
}