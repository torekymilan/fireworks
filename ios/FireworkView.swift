//
//  FireworkView.swift
//  Fireworks
//
//  Created by Milan on 2019. 05. 20.
//  Copyright © 2019. Facebook. All rights reserved.
//

import UIKit

class FireworkView: UIView {
    
  init() {
    super.init(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
  
    self.isUserInteractionEnabled = false
  
    let bubble = FireworkBubble()
    bubble.position = CGPoint(x: frame.width / 2, y: frame.height / 2)
    self.layer.addSublayer(bubble)
    bubble.animate()
  
    DispatchQueue.main.asyncAfter(deadline: .now() + 0.07, execute: {
      for number in 1...6 {
        let line = FireworkLine()
        line.position = CGPoint(x: self.frame.width / 2, y: self.frame.height / 2)
        line.transform = CATransform3DMakeRotation(CGFloat.pi * 2 / CGFloat(6) * CGFloat(number), 0, 0, 1)
        self.layer.addSublayer(line)
        line.animate()
      }
    })
  
    let minOffset: UInt32 = 0
    let maxOffset: UInt32 = 200
    let rotation = CGFloat(arc4random_uniform(maxOffset - minOffset) + minOffset) / CGFloat(100)
    transform = CGAffineTransform(rotationAngle: rotation)
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder);
  }
}
