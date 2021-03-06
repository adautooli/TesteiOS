//
//  ContactsPresenter.swift
//  santanderTest
//
//  Created by Adauto Oliveira on 26/05/19.
//  Copyright (c) 2019 Adauto Oliveira. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol ContactsPresentationLogic
{
  func presentSomething(response: Contacts.Something.Response)
}

class ContactsPresenter: ContactsPresentationLogic
{
  weak var viewController: ContactsDisplayLogic?
  
  // MARK: Do something
  
  func presentSomething(response: Contacts.Something.Response)
  {
    
    var diplayedForms: [Contacts.Something.ViewModel.DisplayedForm] = []
    for form in response.forms{
        let displayedForm = Contacts.Something.ViewModel.DisplayedForm(id: form.id, type: form.type, message: form.message, typefield: form.typefield, hidden: form.hidden, topSpacing: form.topSpacing, show: form.show, required: form.required)
        diplayedForms.append(displayedForm)
    }
    let viewModel = Contacts.Something.ViewModel(diplayedForm: diplayedForms)
    viewController?.displaySomething(viewModel: viewModel)
  }
}
