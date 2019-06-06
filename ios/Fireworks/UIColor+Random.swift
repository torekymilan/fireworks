//
//  UIColor+Random.swift
//  Fireworks
//
//  Created by Milan on 2019. 05. 20.
//  Copyright © 2019. Facebook. All rights reserved.
//

import UIKit

extension UIColor {
  static var random: UIColor {
    return UIColor(red: .random(in: 0...1),
                   green: .random(in: 0...1),
                   blue: .random(in: 0...1),
                   alpha: 1.0)
  }
}
