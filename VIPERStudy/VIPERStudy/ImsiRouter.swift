//
//  ImsiRouter.swift
//  VIPERStudy
//
//  Created by Jay on 2022/04/10.
//

import UIKit

final class ImsiRouter { }

extension ImsiRouter: ImsiRouterProtocol {
  static func createModule() -> ImsiView {
    let view = ImsiView()
    let presenter = ImsiPresenter()
    let interactor = ImsiInteractor()
    let router = ImsiRouter()
    
    view.presenter = presenter
    
    presenter.view = view
    presenter.interactor = interactor
    presenter.router = router
    
    interactor.presenter = presenter
    
    return view
  }
  
  func pushDetailView(from view: UIViewController?) {
    
  }
}
