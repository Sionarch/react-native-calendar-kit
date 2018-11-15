//
//  RNCalendarKitManager.m
//  norsuHomeApp
//
//  Created by Eric Svensson on 2018-11-02.
//  Copyright © 2018 Facebook. All rights reserved.
//
//
#import <Foundation/Foundation.h>
#import <React/RCTViewManager.h>
#import "React/RCTBridgeModule.h"
#import "React/RCTEventEmitter.h"

@interface RCT_EXTERN_MODULE(RNCalendarKitManager, RCTViewManager)
    RCT_EXPORT_VIEW_PROPERTY(onMove, RCTDirectEventBlock)
@end
