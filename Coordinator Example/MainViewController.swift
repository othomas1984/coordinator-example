//
//  MainViewController.swift
//  Test
//
//  Created by Owen Thomas on 2/8/18.
//  Copyright © 2018 Test. All rights reserved.
//

import UIKit

protocol MainViewControllerDelegate {
  func mainViewControllerDismiss()
}

class MainViewController: UIViewController {
  
  var delegate: MainViewControllerDelegate?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  deinit {
    print("Deinit Main View Controller")
  }
  
  @IBAction func replaceWithFirstClicked(_ sender: Any) {
    delegate?.mainViewControllerDismiss()
  }
  
}

