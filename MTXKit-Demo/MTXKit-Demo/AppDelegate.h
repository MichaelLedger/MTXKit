//
//  AppDelegate.h
//  MTXKit-Demo
//
//  Created by MountainX on 2018/9/6.
//  Copyright © 2018年 MTX Software Technology Co.,Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

