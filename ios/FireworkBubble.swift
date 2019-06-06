//
//  FireworkBubble.swift
//  Fireworks
//
//  Created by Milan on 2019. 05. 20.
//  Copyright © 2019. Facebook. All rights reserved.
//

import UIKit

class FireworkBubble: CAShapeLayer, CAAnimationDelegate {
    
  override init() {
    super.init()
    
    addCircle()
  }
  
  override init(layer: Any) {
    super.init(layer: layer)
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder);
  }
  
  func addCircle() {
    let circlePath = UIBezierPath(ovalIn: CGRect(x: -15, y: -15, width: 30, height: 30))
    
    path = circlePath.cgPath
    strokeColor = UIColor.random.cgColor
    fillColor = UIColor.clear.cgColor
    lineWidth = 1
  }
  
  func animate() {
    let scaleAnim = CABasicAnimation(keyPath: "transform.scale")
    scaleAnim.fromValue = 1
    scaleAnim.toValue = 1.25
    scaleAnim.duration = 0.1
    
    scaleAnim.delegate = self
    
    add(scaleAnim, forKey: "scaleCircle")
  }
  
  func animationDidStop(_ anim: CAAnimation, finished flag: Bool) {
    if flag {
      CATransaction.begin()
      CATransaction.setDisableActions(true)
      opacity = 0
      CATransaction.commit()
    }
  }
}
