//
//  ImsiView.swift
//  VIPERStudy
//
//  Created by Jay on 2022/04/10.
//

import UIKit

final class ImsiView: UIViewController {
  var presenter: ImsiPresenterProtocol?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
      self.display()
    
  }
}

extension ImsiView: ImsiViewProtocol {
  func display() {
    
      let imsiLabel = UILabel()
      self.view.addSubview(imsiLabel)
      
      imsiLabel.text = "아직 아무것도 없음"
      
      imsiLabel.frame = CGRect(x: 100, y: 100, width: 100, height: 40)
  }
}
