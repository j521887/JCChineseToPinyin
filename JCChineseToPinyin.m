//
//  JCChineseToPinyin.m
//  ViennaHotel3.0
//
//  Created by Des on 2016/12/5.
//  Copyright © 2016年 Roman Efimov. All rights reserved.
//

#import "JCChineseToPinyin.h"

@implementation JCChineseToPinyin

+(NSString *)getShortPinyin:(NSString *)str
{
    NSMutableString * mStr = [NSMutableString stringWithString:str];
    CFStringTransform((CFMutableStringRef)mStr, NULL, kCFStringTransformMandarinLatin, NO);
    CFStringTransform((CFMutableStringRef)mStr, NULL, kCFStringTransformStripDiacritics, NO);
    
    /*多音字处理*/
    if ([[(NSString *)str substringToIndex:1] compare:@"长"] == NSOrderedSame)
    {
        [mStr replaceCharactersInRange:NSMakeRange(0, 5) withString:@"chang"];
    }
    if ([[(NSString *)str substringToIndex:1] compare:@"沈"] == NSOrderedSame)
    {
        [mStr replaceCharactersInRange:NSMakeRange(0, 4) withString:@"shen"];
    }
    if ([[(NSString *)str substringToIndex:1] compare:@"厦"] == NSOrderedSame)
    {
        [mStr replaceCharactersInRange:NSMakeRange(0, 3) withString:@"xia"];
    }
    if ([[(NSString *)str substringToIndex:1] compare:@"地"] == NSOrderedSame)
    {
        [mStr replaceCharactersInRange:NSMakeRange(0, 2) withString:@"di"];
    }
    if ([[(NSString *)str substringToIndex:1] compare:@"重"] == NSOrderedSame)
    {
        [mStr replaceCharactersInRange:NSMakeRange(0, 5) withString:@"chong"];
    }
    
    // 转化为大写拼音
    NSString * pinyin  = [mStr capitalizedString];
    // 做判断找出所有小写字母
    NSMutableString * First = [NSMutableString stringWithString:pinyin];
    NSString * cityShortPinyin =[[NSString alloc] init];
    
    for (int i = 0; i<First.length; i++) {
        unichar C = [First characterAtIndex:i];
        // 找出所有的大写字母
        if(C<= 'Z' && C>='A') {
            cityShortPinyin = [cityShortPinyin stringByAppendingFormat:@"%C",C];        }
    }
    
    return cityShortPinyin;
}

+(NSString *)getFullPinyin:(NSString *)str
{
    NSMutableString * mStr = [NSMutableString stringWithString:str];
    CFStringTransform((CFMutableStringRef)mStr, NULL, kCFStringTransformMandarinLatin, NO);
    CFStringTransform((CFMutableStringRef)mStr, NULL, kCFStringTransformStripDiacritics, NO);
    
    /*多音字处理*/
    if ([[(NSString *)str substringToIndex:1] compare:@"长"] == NSOrderedSame)
    {
        [mStr replaceCharactersInRange:NSMakeRange(0, 5) withString:@"chang"];
    }
    if ([[(NSString *)str substringToIndex:1] compare:@"沈"] == NSOrderedSame)
    {
        [mStr replaceCharactersInRange:NSMakeRange(0, 4) withString:@"shen"];
    }
    if ([[(NSString *)str substringToIndex:1] compare:@"厦"] == NSOrderedSame)
    {
        [mStr replaceCharactersInRange:NSMakeRange(0, 3) withString:@"xia"];
    }
    if ([[(NSString *)str substringToIndex:1] compare:@"地"] == NSOrderedSame)
    {
        [mStr replaceCharactersInRange:NSMakeRange(0, 2) withString:@"di"];
    }
    if ([[(NSString *)str substringToIndex:1] compare:@"重"] == NSOrderedSame)
    {
        [mStr replaceCharactersInRange:NSMakeRange(0, 5) withString:@"chong"];
    }
    
    NSString *cityFullPinyin=[mStr stringByReplacingOccurrencesOfString:@" " withString:@""];
    return cityFullPinyin;
}


@end
