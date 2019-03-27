//
//  Target_ModuleA.m
//  ModuleA
//
//  Created by 张亚浩 on 2019/3/27.
//  Copyright © 2019 Ace. All rights reserved.
//

#import "Target_ModuleA.h"
#import "FirstViewController.h"

@implementation Target_ModuleA

- (UIViewController *)Action_Category_ViewController:(NSDictionary *)params {
    typedef void (^CallbackType)(NSString *);
    CallbackType callback = params[@"callback"];
    if (callback) {
        callback(@"success");
    }
    FirstViewController *viewController = [[FirstViewController alloc] init];
    return viewController;
}

@end
