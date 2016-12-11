//
//  HurreeCordovaHelper.m
//  HurreeCordovaHelper
//
//  Created by Apple on 29/11/16.
//  Copyright © 2016 QSS. All rights reserved.
//

#import "HurreeCordovaHelper.h"

@implementation HurreeCordovaHelper
{
    NSDictionary *errorDict;
    NSString *appGroupKey;
    NSString *appKey;
    id uniqueUserID;
    NSString *deviceToken;
    id timerValue;
    NSString *firstNameString;
    NSString *lastNamestring;
    NSString *phoneNumberString;
    NSString *emailString;
    NSString *userImageURL;
    NSString *gender;
    NSString *dateOfBirth;

    
}

+(HurreeCordovaHelper *)sharedManager
{
    static HurreeCordovaHelper *sharedMyManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedMyManager = [[self alloc] init];
    });
    return sharedMyManager;
}

-(id) init
{
    if (self = [super init])
    {
        _sdkInstance = [[AnalyticsSingleton alloc]init];
    }
    return self;
}

#pragma mark SDK Login Method

-(void)setApplicationAndUserKeys:(CDVInvokedUrlCommand *)command
{
    //_storedBlock = block;
    _callBackID = command.callbackId;
    errorDict = [[NSDictionary alloc] init];
    
    if ([[command.arguments objectAtIndex:0] isKindOfClass:[NSString class]])
    {
        if ([self isValueEmpty:[command.arguments objectAtIndex:0]])
        {
            appGroupKey  = [command.arguments objectAtIndex:0];
        }
        else
        {
            errorDict = @{@"message" : @"Application group key can't be empty."};
            CDVPluginResult* resultMsg = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsDictionary:errorDict];
            [self.commandDelegate sendPluginResult:resultMsg callbackId:_callBackID];
            return;
        }
    }
    else
    {
        errorDict = @{@"message" : @"Invalid data type for application group key."};
        CDVPluginResult* resultMsg = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsDictionary:errorDict];
        [self.commandDelegate sendPluginResult:resultMsg callbackId:_callBackID];
        return;
    }
    
    if ([[command.arguments objectAtIndex:1] isKindOfClass:[NSString class]])
    {
        if ([self isValueEmpty:[command.arguments objectAtIndex:1]]) {
            appKey  = [command.arguments objectAtIndex:1];
        }
        else
        {
            errorDict = @{@"message" : @"Application key can't be empty."};
            CDVPluginResult* resultMsg = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsDictionary:errorDict];
            [self.commandDelegate sendPluginResult:resultMsg callbackId:_callBackID];
            return;
        }
    }
    else
    {
        errorDict = @{@"message" : @"Invalid data type for application key."};
        CDVPluginResult* resultMsg = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsDictionary:errorDict];
        [self.commandDelegate sendPluginResult:resultMsg callbackId:_callBackID];
        return;
    }
    
    if ([[command.arguments objectAtIndex:2] isKindOfClass:[NSString class]])
    {
        if ([self isValueEmpty:[command.arguments objectAtIndex:2]])
        {
            uniqueUserID  = [command.arguments objectAtIndex:2];
        }
        else
        {
            errorDict = @{@"message" : @"Unique userID can't be empty."};
            CDVPluginResult* resultMsg = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsDictionary:errorDict];
            [self.commandDelegate sendPluginResult:resultMsg callbackId:_callBackID];
            return;
        }
    }
    else
    {
        errorDict = @{@"message" : @"Invalid data type for unique userID."};
        CDVPluginResult* resultMsg = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsDictionary:errorDict];
        [self.commandDelegate sendPluginResult:resultMsg callbackId:_callBackID];
        return;
    }
    
    if ([[command.arguments objectAtIndex:3] isKindOfClass:[NSString class]])
    {
        deviceToken  = [command.arguments objectAtIndex:3];
    }
    else
    {
        errorDict = @{@"message" : @"Invalid data type for device token."};
        CDVPluginResult* resultMsg = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsDictionary:errorDict];
        [self.commandDelegate sendPluginResult:resultMsg callbackId:_callBackID];
        return;
    }
    
    if ([[command.arguments objectAtIndex:4] isKindOfClass:[NSString class]])
    {
        timerValue  = [command.arguments objectAtIndex:4];
    }
    else
    {
        errorDict = @{@"message" : @"Invalid data type for timer value."};
        CDVPluginResult* resultMsg = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsDictionary:errorDict];
        [self.commandDelegate sendPluginResult:resultMsg callbackId:_callBackID];
        return;
    }
    
    if ([[command.arguments objectAtIndex:5] isKindOfClass:[NSString class]])
    {
        if ([self isValueEmpty:[command.arguments objectAtIndex:5]])
        {
            firstNameString  = [command.arguments objectAtIndex:5];
        }
        else
        {
            errorDict = @{@"message" : @"First name can't be empty."};
            CDVPluginResult* resultMsg = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsDictionary:errorDict];
            [self.commandDelegate sendPluginResult:resultMsg callbackId:_callBackID];
            return;
        }
        
    }
    else
    {
        errorDict = @{@"message" : @"Invalid data type for firstname."};
        CDVPluginResult* resultMsg = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsDictionary:errorDict];
        [self.commandDelegate sendPluginResult:resultMsg callbackId:_callBackID];
        return;
    }
    
    if ([[command.arguments objectAtIndex:6] isKindOfClass:[NSString class]])
    {
        lastNamestring  = [command.arguments objectAtIndex:6];
    }
    else
    {
        errorDict = @{@"message" : @"Invalid data type for lastname."};
        CDVPluginResult* resultMsg = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsDictionary:errorDict];
        [self.commandDelegate sendPluginResult:resultMsg callbackId:_callBackID];
        return;
    }
    
    if ([[command.arguments objectAtIndex:7] isKindOfClass:[NSString class]])
    {
        phoneNumberString  = [command.arguments objectAtIndex:7];
    }
    else
    {
        errorDict = @{@"message" : @"Invalid data type for phone number."};
        CDVPluginResult* resultMsg = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsDictionary:errorDict];
        [self.commandDelegate sendPluginResult:resultMsg callbackId:_callBackID];
        return;
    }
    
    if ([[command.arguments objectAtIndex:8] isKindOfClass:[NSString class]])
    {
        emailString  = [command.arguments objectAtIndex:8];
    }
    else
    {
        errorDict = @{@"message" : @"Invalid data type for phone number."};
        CDVPluginResult* resultMsg = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsDictionary:errorDict];
        [self.commandDelegate sendPluginResult:resultMsg callbackId:_callBackID];
        return;
    }
    
    if ([[command.arguments objectAtIndex:9] isKindOfClass:[NSString class]])
    {
        userImageURL  = [command.arguments objectAtIndex:9];
    }
    else
    {
        errorDict = @{@"message" : @"Invalid data type for user image."};
        CDVPluginResult* resultMsg = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsDictionary:errorDict];
        [self.commandDelegate sendPluginResult:resultMsg callbackId:_callBackID];
        return;
    }
    
    if ([[command.arguments objectAtIndex:10] isKindOfClass:[NSString class]])
    {
        gender  = [command.arguments objectAtIndex:10];
    }
    else
    {
        errorDict = @{@"message" : @"Invalid data type for gender."};
        CDVPluginResult* resultMsg = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsDictionary:errorDict];
        [self.commandDelegate sendPluginResult:resultMsg callbackId:_callBackID];
        return;
    }
    
    if ([[command.arguments objectAtIndex:11] isKindOfClass:[NSString class]])
    {
        dateOfBirth  = [command.arguments objectAtIndex:11];
    }
    else
    {
        errorDict = @{@"message" : @"Invalid data type for gender."};
        CDVPluginResult* resultMsg = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsDictionary:errorDict];
        [self.commandDelegate sendPluginResult:resultMsg callbackId:_callBackID];
        return;
    }

    [[HurreeCordovaHelper sharedManager].sdkInstance deportKeyValues:appGroupKey app_key:appKey uniqueUserID:uniqueUserID deviceTokenString:deviceToken timerValue:timerValue isiOSNative:false];
    [[HurreeCordovaHelper sharedManager].sdkInstance deportUserValues:firstNameString lastName:lastNamestring phoneNumber:phoneNumberString email:emailString userImageURL:userImageURL gender:gender dateOfBirth:dateOfBirth];
    [[HurreeCordovaHelper sharedManager].sdkInstance sendLoginDetails:^(id result)
    {
       // self.storedBlock(result);
        if ([result isKindOfClass:[NSDictionary class]])
        {
            NSDictionary *resultDict = [result valueForKey:@"data"];
            
            
            if ([[resultDict valueForKey:@"status"] isEqualToString:@"success"] || [[result valueForKey:@"status"] isEqualToString:@"success"])
            {
                CDVPluginResult* resultMsg = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDictionary:result];
                [self.commandDelegate sendPluginResult:resultMsg callbackId:_callBackID];
            }
            else
            {
                CDVPluginResult* resultMsg = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsDictionary:result];
                [self.commandDelegate sendPluginResult:resultMsg callbackId:_callBackID];
            }
        }
        else
        {
            CDVPluginResult* resultMsg = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsDictionary:result];
            [self.commandDelegate sendPluginResult:resultMsg callbackId:_callBackID];
        }
    }];
}

-(BOOL)isValueEmpty:(NSString *)argumentValue
{
    if ((argumentValue == nil)||([argumentValue isEqualToString:@""]))
    {
        return  false;
    }
    else
    {
        return true;
    }
}


#pragma mark SDK Push Notification Helper Functions

-(BOOL)notificationFromHurree:(CDVInvokedUrlCommand *)command
{
    _callBackID = command.callbackId;
    if ([command.arguments objectAtIndex:0] != nil && [[command.arguments objectAtIndex:0] isKindOfClass:[NSDictionary class]])
    {
        if ([[HurreeCordovaHelper sharedManager].sdkInstance pushNotificationWasSentFromHurree:[command.arguments objectAtIndex:0]] == true)
        {
            errorDict = @{@"message" : @"True"};
            CDVPluginResult* resultMsg = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDictionary:errorDict];
            [self.commandDelegate sendPluginResult:resultMsg callbackId:_callBackID];
            return [[HurreeCordovaHelper sharedManager].sdkInstance pushNotificationWasSentFromHurree:[command.arguments objectAtIndex:0]];
        }
        else
        {
            errorDict = @{@"message" : @"False"};
            CDVPluginResult* resultMsg = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDictionary:errorDict];
            [self.commandDelegate sendPluginResult:resultMsg callbackId:_callBackID];
            return [[HurreeCordovaHelper sharedManager].sdkInstance pushNotificationWasSentFromHurree:[command.arguments objectAtIndex:0]];
        }
    }
    else
    {
        errorDict = @{@"message" : @"Invalid data for notification payload."};
        CDVPluginResult* resultMsg = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsDictionary:errorDict];
        [self.commandDelegate sendPluginResult:resultMsg callbackId:_callBackID];
    }
}

-(void)showPushNotificationView:(CDVInvokedUrlCommand *)command
{
    _callBackID = command.callbackId;
    
    if ([command.arguments objectAtIndex:0] != nil)
    {
        if ([command.arguments objectAtIndex:1] != nil && [[command.arguments objectAtIndex:1] isKindOfClass:[NSDictionary class]])
        {
            errorDict = @{@"message" : @"Valid Payload."};
            CDVPluginResult* resultMsg = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDictionary:errorDict];
            [self.commandDelegate sendPluginResult:resultMsg callbackId:_callBackID];
            [[HurreeCordovaHelper sharedManager].sdkInstance shownotification:[command.arguments objectAtIndex:0] notificationInfoDict:[command.arguments objectAtIndex:1]];
        }
        else
        {
            errorDict = @{@"message" : @"Invalid data for notification payload."};
            CDVPluginResult* resultMsg = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsDictionary:errorDict];
            [self.commandDelegate sendPluginResult:resultMsg callbackId:_callBackID];
        }
        
    }
    else
    {
        errorDict = @{@"message" : @"Invalid application delegate."};
        CDVPluginResult* resultMsg = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsDictionary:errorDict];
        [self.commandDelegate sendPluginResult:resultMsg callbackId:_callBackID];
    }
    
}

#pragma mark logApplication and Purchase Events

-(void)logApplicationEvents:(CDVInvokedUrlCommand *)command
{
    _callBackID = command.callbackId;
    NSString *screenName;
    NSString *logEvent;
    NSString *eventType;
    if ([[command.arguments objectAtIndex:0] isKindOfClass:[NSString class]])
    {
        if ([self isValueEmpty:[command.arguments objectAtIndex:0]])
        {
            screenName  = [command.arguments objectAtIndex:0];
        }
        else
        {
            errorDict = @{@"message" : @"Screen name can't be empty."};
            CDVPluginResult* resultMsg = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsDictionary:errorDict];
            [self.commandDelegate sendPluginResult:resultMsg callbackId:_callBackID];
            return;
        }
    }
    else
    {
        errorDict = @{@"message" : @"Invalid data type for screenName"};
        CDVPluginResult* resultMsg = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsDictionary:errorDict];
        [self.commandDelegate sendPluginResult:resultMsg callbackId:_callBackID];
        return;
    }
    
    if ([[command.arguments objectAtIndex:1] isKindOfClass:[NSString class]])
    {
        
        if ([self isValueEmpty:[command.arguments objectAtIndex:1]])
        {
            logEvent  = [command.arguments objectAtIndex:1];
        }
        else
        {
            errorDict = @{@"message" : @"Event detail can't be empty."};
            CDVPluginResult* resultMsg = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsDictionary:errorDict];
            [self.commandDelegate sendPluginResult:resultMsg callbackId:_callBackID];
            return;
        }
    }
    else
    {
        errorDict = @{@"message" : @"Invalid data type for log event detail."};
        CDVPluginResult* resultMsg = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsDictionary:errorDict];
        [self.commandDelegate sendPluginResult:resultMsg callbackId:_callBackID];
        return;
    }
    
    if ([[command.arguments objectAtIndex:2] isKindOfClass:[NSString class]])
    {
        
        if ([self isValueEmpty:[command.arguments objectAtIndex:2]])
        {
            eventType  = [command.arguments objectAtIndex:2];
        }
        else
        {
            errorDict = @{@"message" : @"Event type can't be empty."};
            CDVPluginResult* resultMsg = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsDictionary:errorDict];
            [self.commandDelegate sendPluginResult:resultMsg callbackId:_callBackID];
            return;
        }
    }
    else
    {
        errorDict = @{@"message" : @"Invalid data type for event type"};
        CDVPluginResult* resultMsg = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsDictionary:errorDict];
        [self.commandDelegate sendPluginResult:resultMsg callbackId:_callBackID];
        return;
    }
    errorDict = @{@"message" : @"Event has valid info."};
    [[HurreeCordovaHelper sharedManager].sdkInstance setCustomLogWithEventName:screenName eventName:logEvent withEventType:eventType];
    CDVPluginResult* resultMsg = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDictionary:errorDict];
    [self.commandDelegate sendPluginResult:resultMsg callbackId:_callBackID];
}


-(void)logPurchaseEvents:(CDVInvokedUrlCommand *)command
{
    NSString *productName;
    NSString *currencyCode;
    NSNumber *price;
    int quantitiy;
   
    
    if ([[command.arguments objectAtIndex:0] isKindOfClass:[NSString class]])
    {
        if ([self isValueEmpty:[command.arguments objectAtIndex:0]])
        {
            productName  = [command.arguments objectAtIndex:0];
        }
        else
        {
            errorDict = @{@"message" : @"Product name can't be empty."};
            CDVPluginResult* resultMsg = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsDictionary:errorDict];
            [self.commandDelegate sendPluginResult:resultMsg callbackId:_callBackID];
            return;
        }
    }
    else
    {
        errorDict = @{@"message" : @"Invalid data type for product name"};
        CDVPluginResult* resultMsg = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsDictionary:errorDict];
        [self.commandDelegate sendPluginResult:resultMsg callbackId:_callBackID];
        return;
    }
    
    
    if ([[command.arguments objectAtIndex:1] isKindOfClass:[NSString class]])
    {
        if ([self isValueEmpty:[command.arguments objectAtIndex:1]])
        {
            currencyCode  = [command.arguments objectAtIndex:1];
        }
        else
        {
            errorDict = @{@"message" : @"Currency code can't be empty."};
            CDVPluginResult* resultMsg = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsDictionary:errorDict];
            [self.commandDelegate sendPluginResult:resultMsg callbackId:_callBackID];
            return;
        }
    }
    else
    {
        errorDict = @{@"message" : @"Invalid data type for currency codes."};
        CDVPluginResult* resultMsg = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsDictionary:errorDict];
        [self.commandDelegate sendPluginResult:resultMsg callbackId:_callBackID];
        return;
    }
    
    if ([[command.arguments objectAtIndex:2] isKindOfClass:[NSString class]])
    {
        if ([self isValueEmpty:[command.arguments objectAtIndex:2]])
        {
            price  =  [NSNumber numberWithInt:[[command.arguments objectAtIndex:2] integerValue]];
        }
        else
        {
            errorDict = @{@"message" : @"Price can't be empty."};
            CDVPluginResult* resultMsg = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsDictionary:errorDict];
            [self.commandDelegate sendPluginResult:resultMsg callbackId:_callBackID];
            return;
        }
    }
    else
    {
        errorDict = @{@"message" : @"Invalid data type for price."};
        CDVPluginResult* resultMsg = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsDictionary:errorDict];
        [self.commandDelegate sendPluginResult:resultMsg callbackId:_callBackID];
        return;
    }
    
    if ([[command.arguments objectAtIndex:3] isKindOfClass:[NSString class]])
    {
        if ([self isValueEmpty:[command.arguments objectAtIndex:3]])
        {
            quantitiy  =  [NSNumber numberWithInt:[[command.arguments objectAtIndex:3] integerValue]];
        }
        else
        {
            errorDict = @{@"message" : @"Quantity can't be empty."};
            CDVPluginResult* resultMsg = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsDictionary:errorDict];
            [self.commandDelegate sendPluginResult:resultMsg callbackId:_callBackID];
            return;
        }
    }
    else
    {
        errorDict = @{@"message" : @"Invalid data type for quantity."};
        CDVPluginResult* resultMsg = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsDictionary:errorDict];
        [self.commandDelegate sendPluginResult:resultMsg callbackId:_callBackID];
        return;
    }
    
    [[HurreeCordovaHelper sharedManager].sdkInstance logPurchaseWithCurrencyWithPriceAndQuantity:productName currencyCode:currencyCode price:price quantity:quantitiy];
    errorDict = @{@"message" : @"Purchase logs has valid info."};
    CDVPluginResult* resultMsg = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDictionary:errorDict];
    [self.commandDelegate sendPluginResult:resultMsg callbackId:_callBackID];
}


#pragma mark SDK Logout 

-(void)logoutSDK:(CDVInvokedUrlCommand *)command
{
    _callBackID = command.callbackId;
    [[HurreeCordovaHelper sharedManager].sdkInstance logoutUser:^(id result) {
        if ([result isKindOfClass:[NSDictionary class]])
        {
            if ([result valueForKey:@"status"] != nil)
            {
                CDVPluginResult* resultMsg = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsDictionary:result];
                [self.commandDelegate sendPluginResult:resultMsg callbackId:_callBackID];
            }
            else
            {
                CDVPluginResult* resultMsg = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDictionary:result];
                [self.commandDelegate sendPluginResult:resultMsg callbackId:_callBackID];
                
            }
        }
        else
        {
            CDVPluginResult* resultMsg = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsDictionary:result];
            [self.commandDelegate sendPluginResult:resultMsg callbackId:_callBackID];
        }
    }];
}



@end
