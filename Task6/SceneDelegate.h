//
//  SceneDelegate.h
//  Task6
//
//  Created by Albert Zhloba on 6/23/20.
//  Copyright © 2020 Albert Zhloba. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SceneDelegate : UIResponder <UIWindowSceneDelegate>

@property (strong, nonatomic) UIWindow * window;
@property (nonatomic, copy) NSArray<__kindof UIViewController *>*viewControllers;
@property (nonatomic, copy) UITabBarController *tabBarController;
@end

