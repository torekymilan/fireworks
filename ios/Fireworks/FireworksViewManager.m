//
//  FireworksViewManager.m
//  Fireworks
//
//  Created by Milan on 2019. 05. 20.
//  Copyright © 2019. Facebook. All rights reserved.
//

#import "Fireworks-Swift.h"
#import "FireworksViewManager.h"

@implementation FireworksViewManager

RCT_EXPORT_MODULE(FireworksView)
- (UIView *)view
{
  return [[FireworksView alloc] init];
}
@end
