//
//  UIImage+GetMainColorFromImage.h
//  huashida_home
//
//  Created by MichaelLedger on 2017/12/29.
//  Copyright © 2017年 MichaelLedger. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (GetMainColorFromImage)

/**
 主色调

 @return 出现次数最多的色值
 */
- (UIColor*)mainColor;

@end
