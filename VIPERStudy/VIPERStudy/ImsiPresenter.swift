//
//  ImsiPresenter.swift
//  VIPERStudy
//
//  Created by Jay on 2022/04/10.
//

import UIKit

final class ImsiPresenter {
  weak var view: ImsiViewProtocol?
  var interactor: ImsiInteractorProtocol?
  var router: ImsiRouterProtocol?
}

extension ImsiPresenter: ImsiPresenterProtocol {
  func viewDidLoad() {
    
  }
  
  func searchRepo() {
    
  }
  
  func didClickOnRepoCell(from view: UIViewController?) {
    
  }
}
