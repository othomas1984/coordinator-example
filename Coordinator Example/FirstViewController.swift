//
//  FirstViewController.swift
//  Test
//
//  Created by Owen Thomas on 2/8/18.
//  Copyright © 2018 Test. All rights reserved.
//

import UIKit

protocol FirstViewControllerDelegate {
  func firstViewControllerDismiss()
}

class FirstViewController: UIViewController {
  
  var delegate: FirstViewControllerDelegate?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  deinit {
    print("Deinit First View Controller")
  }
  
  @IBAction func replaceWithSecondTapped() {
    delegate?.firstViewControllerDismiss()
  }
  
  /*
   // MARK: - Navigation
   
   // In a storyboard-based application, you will often want to do a little preparation before navigation
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
   // Get the new view controller using segue.destinationViewController.
   // Pass the selected object to the new view controller.
   }
   */
  
}
