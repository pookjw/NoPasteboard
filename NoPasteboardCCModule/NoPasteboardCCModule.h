#import <UIKit/UIKit.h>
#import <ControlCenterUIKit/CCUIToggleModule.h>
#import <rocketbootstrap/rocketbootstrap.h>
#import <AppSupport/CPDistributedMessagingCenter.h>
#import <objc/runtime.h>

@interface NoPasteboardCCModule : CCUIToggleModule
@property (nonatomic, assign, readwrite) BOOL isModuleSelected;
@property (nonatomic, assign, readwrite) CPDistributedMessagingCenter *messagingCenter;
@end
