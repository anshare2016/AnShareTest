//
//  iOS_Share.h
//  iOS_Share
//
//  Created by an on 2017/3/6.
//  Copyright © 2017年 anshare2016. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


typedef enum {
    shareWX    = 1,     //   分享到微信
    shareQQ,            //   分享带QQ
    shareWB             //   分享到新浪微博
} shareType;

typedef NS_ENUM(NSInteger, shareResult) {
    shareResultCancelled,           // 取消分享
    shareResultDone                 // 点击分享
};

typedef void (^shareCompletionHandler)(shareResult result);


@interface iOS_Share : NSObject

-(bool)init:(shareType)type Completeblock:(shareCompletionHandler _Nullable)Handlerblock;

/*
 只分享图片，调用此方法即可
 */
-(bool)addImage:(UIImage* _Nonnull)img;


/*
 只分享URL，调用此方法即可,该方法通常用于iOS11级以上
 */
-(bool)addUrl:(NSString* _Nonnull)strUrl;


/*
 分享URL，同时想修改网页的缩略图、URL、文章标题，调用此方法，该方法通常用于iOS11 以下
 */
-(bool)addUrl:(NSString* _Nonnull)strUrl Title:(NSString* _Nonnull)strURLTitle Image:(UIImage* _Nonnull)img;


-(UIViewController* _Nonnull)composeVC1;

@end
