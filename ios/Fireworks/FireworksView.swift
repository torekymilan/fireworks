//
//  FireworksView.swift
//  Fireworks
//
//  Created by Milan on 2019. 05. 20.
//  Copyright © 2019. Facebook. All rights reserved.
//

import UIKit

class FireworksView: UIView {
  
  var tapGesture: UITapGestureRecognizer!
  
  init() {
    super.init(frame: UIScreen.main.bounds);
    self.backgroundColor = UIColor.clear
    
    let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
    self.addGestureRecognizer(tapGesture)
    
    self.isUserInteractionEnabled = true
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder);
  }
  
  @objc func handleTap(_ sender: UITapGestureRecognizer) {
    switch sender.state {
      case .ended:
        
        let fireworkView = FireworkView()
        fireworkView.center = sender.location(in: self)
        self.addSubview(fireworkView)
      
      default:
        print("Hit unhandled state.")
      }
  }
}
