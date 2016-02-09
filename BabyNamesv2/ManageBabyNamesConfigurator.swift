//
//  ManageBabyNamesConfigurator.swift
//  BabyNamesv2
//
//  Created by Felipe Caldas on 7/02/2016.
//  Copyright (c) 2016 FunkApps FMC. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so you can apply
//  clean architecture to your iOS and Mac projects, see http://clean-swift.com
//

import UIKit

// MARK: Connect View, Interactor, and Presenter

extension ManageBabyNamesViewController: ManageBabyNamesPresenterOutput
{
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
  {
    router.passDataToNextScene(segue)
  }
}

extension ManageBabyNamesInteractor: ManageBabyNamesViewControllerOutput
{
}

extension ManageBabyNamesPresenter: ManageBabyNamesInteractorOutput
{
}

class ManageBabyNamesConfigurator
{
  // MARK: Object lifecycle
  
  class var sharedInstance: ManageBabyNamesConfigurator
  {
    struct Static {
      static var instance: ManageBabyNamesConfigurator?
      static var token: dispatch_once_t = 0
    }
    
    dispatch_once(&Static.token) {
      Static.instance = ManageBabyNamesConfigurator()
    }
    
    return Static.instance!
  }
  
  // MARK: Configuration
  
  func configure(viewController: ManageBabyNamesViewController)
  {
    let router = ManageBabyNamesRouter()
    router.viewController = viewController
    
    let presenter = ManageBabyNamesPresenter()
    presenter.output = viewController
    
    let interactor = ManageBabyNamesInteractor()
    interactor.output = presenter
    
    viewController.output = interactor
    viewController.router = router
  }
}