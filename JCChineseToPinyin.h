//
//  JCChineseToPinyin.h
//  ViennaHotel3.0
//
//  Created by Des on 2016/12/5.
//  Copyright © 2016年 Roman Efimov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JCChineseToPinyin : NSObject
/**
 获取所以汉字的首字母
 */
+(NSString *)getShortPinyin:(NSString *)str;

/**
 获取汉字的全部拼音
 */
+(NSString *)getFullPinyin:(NSString *)str;

@end
