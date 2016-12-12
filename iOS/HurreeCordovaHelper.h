//
//  HurreeCordovaHelper.h
//  HurreeCordovaHelper
//
//  Created by Apple on 29/11/16.
//  Copyright © 2016 QSS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <HurreeSDK/HurreeAnalytics.h>
#import <HurreeSDK/ExceptionHandler.h>
#import <HurreeSDK/HurreeSDK-Swift.h>
#import <Cordova/CDV.h>
#import <Cordova/CDVPlugin.h>

@interface HurreeCordovaHelper : CDVPlugin <NSObject>

@property(nonatomic, strong) NSString *callBackID;
@property (nonatomic, strong) AnalyticsSingleton *sdkInstance;

@property (nonatomic, copy) void (^storedBlock)(id resultDict);
@property (nonatomic, copy) void (^logOutBlock)(id logOutResultDict);

-(void)setApplicationAndUserKeys:(CDVInvokedUrlCommand *)command;
-(void)logApplicationEvents:(CDVInvokedUrlCommand *)command;
-(BOOL)notificationFromHurree:(CDVInvokedUrlCommand *)command;
-(void)showPushNotificationView:(CDVInvokedUrlCommand *)command;
-(void)logPurchaseEvents:(CDVInvokedUrlCommand *)command;
-(void)logoutSDK:(CDVInvokedUrlCommand *)command;

@end
