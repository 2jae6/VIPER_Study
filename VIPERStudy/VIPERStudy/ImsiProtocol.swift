//
//  ImsiProtocol.swift
//  VIPERStudy
//
//  Created by Jay on 2022/04/10.
//

import UIKit

protocol ImsiViewProtocol: AnyObject {
  var presenter: ImsiPresenterProtocol? { get }
  
  func display() // view를 그림
}

protocol ImsiPresenterProtocol: AnyObject {
  var view: ImsiViewProtocol? { get }
  var interactor: ImsiInteractorProtocol? { get }
  var router: ImsiRouterProtocol? { get }
  
  func viewDidLoad() // 뷰가 로드될 때, 주로 interactor에서 초기값 가져와서 뷰 업데이트
  func searchRepo() // repo를 검색
  
  func didClickOnRepoCell(from view: UIViewController?) // repo 탭시
}

protocol ImsiInteractorProtocol {
  var presenter: ImsiPresenterProtocol? { get }
   
  func fetchData() // 초기 데이터 가져오기
  func updateData() // 데이터 업데이트
}

protocol ImsiRouterProtocol {
  static func createModule() -> ImsiView // VIPER통에 넣은 View return
  
  func pushDetailView(from view: UIViewController?) // 디테일뷰로 이동
}
