//
//  FTMReactNativeFlex.m
//  FTMReactNativeFlex
//
//  Created by Francisco Javier Trujillo Mata on 08/03/2018.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import "FTMReactNativeFlex.h"
#import "FLEXManager.h"

@implementation FTMReactNativeFlex

// To export a module named FTMReactNativeFlex
RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(showExplorer)
{
    dispatch_async(dispatch_get_main_queue(), ^{
        [[FLEXManager sharedManager] showExplorer];
    });
}

@end
