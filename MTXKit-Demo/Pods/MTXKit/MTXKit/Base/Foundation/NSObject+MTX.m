//
//  NSObject+MTX.m
//  MTXKit-Demo
//
//  Created by MountainX on 2018/9/6.
//  Copyright © 2018年 MTX Software Technology Co.,Ltd. All rights reserved.
//

#import "NSObject+MTX.h"
#include <objc/runtime.h>

@implementation NSObject (MTX)

- (void)performSelector:(SEL)aSelector afterDelay:(NSTimeInterval)delay {
    [self performSelector:aSelector withObject:nil afterDelay:delay];
}

+ (BOOL)swizzelInstanceMethod:(SEL)originalSel with:(SEL)newSel {
    Method originalMethod = class_getInstanceMethod(self, originalSel);
    if (!originalMethod) return NO;
    
    Method newMethod = class_getInstanceMethod(self, newSel);
    if (!newMethod) return NO;
    
    //If instance method already exists, 'class_addMethod' will fail.
    class_addMethod(self, originalSel, class_getMethodImplementation(self, originalSel), method_getTypeEncoding(originalMethod));
    
    //If instance method already exists, 'class_addMethod' will fail.
    class_addMethod(self, newSel, class_getMethodImplementation(self, newSel), method_getTypeEncoding(newMethod));
    
    method_exchangeImplementations(originalMethod, newMethod);
    return YES;
}

+ (BOOL)swizzleClassMethod:(SEL)originalSel with:(SEL)newSel {
    Class class = object_getClass(self);// 'object_getClass' return 'meta class'
    
    // Equal to 'class_getClassMethod',because 'Class Method' is 'Instance Method' as for 'meta class'.
    Method originalMethod = class_getInstanceMethod(class, originalSel);
    if (!originalMethod) return NO;
    
    // Equal to 'class_getClassMethod',because 'Class Method' is 'Instance Method' as for 'meta class'.
    Method newMethod = class_getInstanceMethod(class, newSel);
    if (!newMethod) return NO;
    
    method_exchangeImplementations(originalMethod, newMethod);
    return YES;
}

@end
