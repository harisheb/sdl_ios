//
//  SDLOnLockScreenStatus.m
//  SmartDeviceLink
//

#import "SDLOnLockScreenStatus.h"

#import "SDLHMILevel.h"
#import "SDLLockScreenStatus.h"

NS_ASSUME_NONNULL_BEGIN

@implementation SDLOnLockScreenStatus

- (instancetype)init {
    if (self = [super initWithName:@"OnLockScreenStatus"]) {
    }
    return self;
}

- (void)setLockScreenStatus:(SDLLockScreenStatus)lockScreenStatus {
    if (lockScreenStatus != nil) {
        [parameters setObject:lockScreenStatus forKey:@"OnLockScreenStatus"];
    } else {
        [parameters removeObjectForKey:@"OnLockScreenStatus"];
    }
}

- (SDLLockScreenStatus)lockScreenStatus {
    NSObject *obj = [parameters objectForKey:@"OnLockScreenStatus"];
    return (SDLLockScreenStatus)obj;
}

- (void)setHmiLevel:(SDLHMILevel)hmiLevel {
    if (hmiLevel != nil) {
        [parameters setObject:hmiLevel forKey:@"hmilevel"];
    } else {
        [parameters removeObjectForKey:@"hmilevel"];
    }
}

- (SDLHMILevel)hmiLevel {
    NSObject *obj = [parameters objectForKey:@"hmilevel"];
    return (SDLHMILevel)obj;
}

- (void)setUserSelected:(NSNumber<SDLBool> *)userSelected {
    if (userSelected != nil) {
        [parameters setObject:userSelected forKey:@"userselected"];
    } else {
        [parameters removeObjectForKey:@"userselected"];
    }
}

- (NSNumber<SDLBool> *)userSelected {
    return [parameters objectForKey:@"userselected"];
}

- (void)setDriverDistractionStatus:(NSNumber<SDLBool> *)driverDistractionStatus {
    if (driverDistractionStatus != nil) {
        [parameters setObject:driverDistractionStatus forKey:@"driverdistractionstatus"];
    } else {
        [parameters removeObjectForKey:@"driverdistractionstatus"];
    }
}

- (NSNumber<SDLBool> *)driverDistractionStatus {
    return [parameters objectForKey:@"driverdistractionstatus"];
}

@end

NS_ASSUME_NONNULL_END
