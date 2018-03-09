//
//  UIApplicationExtensions.swift
//  Test
//
//  Created by Owen Thomas on 2/8/18.
//  Copyright © 2018 Test. All rights reserved.
//

import UIKit

extension UIApplication {
  static func replaceRootViewController(with controller: UIViewController?) {
    shared.keyWindow?.rootViewController = controller
    shared.keyWindow?.makeKeyAndVisible()
  }
}
