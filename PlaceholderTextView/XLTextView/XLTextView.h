//
//  XLTextView.h
//  PlaceholderTextView
//
//  Created by 谢小御 on 16/2/23.
//  Copyright © 2016年 谢小御. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XLTextView : UITextView
/**
 *  占位文字
 */
@property (nonatomic, copy) NSString *placeholder;
/**
 *  占位文字颜色
 */
@property (nonatomic, strong) UIColor *placeholderColor;
@end
