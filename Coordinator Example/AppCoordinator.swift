//
//  AppCoordinator.swift
//  Test
//
//  Created by Owen Thomas on 2/8/18.
//  Copyright © 2018 Test. All rights reserved.
//

import UIKit

protocol Coordinator {
  func start()
}

class AppCoordinator: Coordinator, MainViewControllerDelegate, FirstViewControllerDelegate, SecondViewControllerDelegate {
  var childCoordinators = [Coordinator]()
  var rootViewController: UINavigationController!
  
  required init(navigationController controller: UINavigationController) {
    self.rootViewController = controller
  }
  
  func start() {
    let mainViewController = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as! MainViewController
    mainViewController.delegate = self
    rootViewController.pushViewController(mainViewController, animated: false)
  }
  
  func mainViewControllerDismiss() {
    let firstViewController = UIStoryboard(name: "First", bundle: nil).instantiateInitialViewController() as! FirstViewController
    firstViewController.delegate = self
    rootViewController.pushViewController(firstViewController, animated: true)
  }
  
  func firstViewControllerDismiss() {
    let secondViewController = UIStoryboard(name: "Second", bundle: nil).instantiateInitialViewController() as! SecondViewController
    secondViewController.delegate = self
    UIApplication.replaceRootViewController(with: secondViewController)
  }
  
  func secondViewControllerDismiss() {
    let view = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
    view.backgroundColor = .red
    let button = UIButton(frame: CGRect(x: 20, y: 20, width: 250, height: 20))
    button.setTitle("Click me to get out of here", for: .normal)
    button.addTarget(self, action: #selector(displayMainViewController), for: .touchUpInside)
    view.addSubview(button)
    UIApplication.shared.keyWindow?.subviews.forEach({ $0.removeFromSuperview() })
    UIApplication.shared.keyWindow?.addSubview(view)
    UIApplication.replaceRootViewController(with: nil)
  }
  
  @objc func displayMainViewController() {
    let mainViewController = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as! MainViewController
    mainViewController.delegate = self
    rootViewController.setViewControllers([mainViewController], animated: false)
    UIApplication.replaceRootViewController(with: rootViewController)
  }
}
