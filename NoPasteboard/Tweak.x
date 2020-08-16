#import <UIKit/UIKit.h>
#import <rocketbootstrap/rocketbootstrap.h>
#import <AppSupport/CPDistributedMessagingCenter.h>

%group HookUIPasteboard
static BOOL isEnabled = NO;
void updateStatus() {
	CPDistributedMessagingCenter *messagingCenter;
	messagingCenter = [objc_getClass("CPDistributedMessagingCenter") centerNamed:@"com.pookjw.nopasteboardmessagecenter"];

	if (messagingCenter == nil) {
		isEnabled = NO;
		return;
	}
	rocketbootstrap_distributedmessagingcenter_apply(messagingCenter);

	NSDictionary *statusDic = [messagingCenter sendMessageAndReceiveReplyName:@"requestStatus" userInfo:nil];
	if (statusDic == nil) {
		isEnabled = NO;
		return;
	}

	isEnabled = [statusDic[@"status"] boolValue];
}

%hook UIPasteboard
- (NSArray *)itemProviders {
	updateStatus();
	if (isEnabled) {
		return nil;
	} else {
		return %orig;
	}
}
- (_Bool)hasColors {
	updateStatus();
	if (isEnabled) {
		return NO;
	} else {
		return %orig;
	}
}
- (_Bool)hasImages{
	updateStatus();
	if (isEnabled) {
		return NO;
	} else {
		return %orig;
	}
}
- (_Bool)hasURLs{
	updateStatus();
	if (isEnabled) {
		return NO;
	} else {
		return %orig;
	}
}
- (_Bool)hasStrings{
	updateStatus();
	if (isEnabled) {
		return NO;
	} else {
		return %orig;
	}
}
- (NSArray *)colors {
	updateStatus();
	if (isEnabled) {
		return nil;
	} else {
		return %orig;
	}
}
- (NSArray *)images {
	updateStatus();
	if (isEnabled) {
		return nil;
	} else {
		return %orig;
	}
}
- (NSArray *)URLs {
	updateStatus();
	if (isEnabled) {
		return nil;
	} else {
		return %orig;
	}
}
- (NSArray *)strings {
	updateStatus();
	if (isEnabled) {
		return nil;
	} else {
		return %orig;
	}
}
- (UIColor *)color {
	updateStatus();
	if (isEnabled) {
		return nil;
	} else {
		return %orig;
	}
}
- (UIImage *)image {
	updateStatus();
	if (isEnabled) {
		return nil;
	} else {
		return %orig;
	}
}
- (NSURL *)URL {
	updateStatus();
	if (isEnabled) {
		return nil;
	} else {
		return %orig;
	}
}
- (NSString *)string {
	updateStatus();
	if (isEnabled) {
		return nil;
	} else {
		return %orig;
	}
}
%end

%hook _UIConcretePasteboard
- (id)itemProviders {
	updateStatus();
	if (isEnabled) {
		return nil;
	} else {
		return %orig;
	}
}
- (_Bool)hasColors {
	updateStatus();
	if (isEnabled) {
		return NO;
	} else {
		return %orig;
	}
}
- (_Bool)hasImages{
	updateStatus();
	if (isEnabled) {
		return NO;
	} else {
		return %orig;
	}
}
- (_Bool)hasURLs{
	updateStatus();
	if (isEnabled) {
		return NO;
	} else {
		return %orig;
	}
}
- (_Bool)hasStrings{
	updateStatus();
	if (isEnabled) {
		return NO;
	} else {
		return %orig;
	}
}
- (id)colors {
	updateStatus();
	if (isEnabled) {
		return nil;
	} else {
		return %orig;
	}
}
- (id)images {
	updateStatus();
	if (isEnabled) {
		return nil;
	} else {
		return %orig;
	}
}
- (id)URLs {
	updateStatus();
	if (isEnabled) {
		return nil;
	} else {
		return %orig;
	}
}
- (id)strings {
	updateStatus();
	if (isEnabled) {
		return nil;
	} else {
		return %orig;
	}
}
- (id)color {
	updateStatus();
	if (isEnabled) {
		return nil;
	} else {
		return %orig;
	}
}
- (id)image {
	updateStatus();
	if (isEnabled) {
		return nil;
	} else {
		return %orig;
	}
}
- (id)URL {
	updateStatus();
	if (isEnabled) {
		return nil;
	} else {
		return %orig;
	}
}
- (id)string {
	updateStatus();
	if (isEnabled) {
		return nil;
	} else {
		return %orig;
	}
}
- (id)items {
	updateStatus();
	if (isEnabled) {
		return nil;
	} else {
		return %orig;
	}
}

- (id)dataForPasteboardType:(id)arg1 {
	updateStatus();
	if (isEnabled) {
		return nil;
	} else {
		return %orig(arg1);
	}
}
%end
%end

%ctor {
	%init(HookUIPasteboard)
}