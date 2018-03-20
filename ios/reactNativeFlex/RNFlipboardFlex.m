//
//  RNFlipboardFlex.m
//  RNFlipboardFlex
//
//  Created by Francisco Javier Trujillo Mata on 08/03/2018.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import "RNFlipboardFlex.h"
#import "FLEXManager.h"

@implementation RNFlipboardFlex

// To export a module named RNFlipboardFlex
RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(showExplorer)
{
    dispatch_async(dispatch_get_main_queue(), ^{
        [[FLEXManager sharedManager] showExplorer];
    });
}

@end
