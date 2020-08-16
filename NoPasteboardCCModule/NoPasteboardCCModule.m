#import "NoPasteboardCCModule.h"

@implementation NoPasteboardCCModule
- (UIImage *)iconGlyph {
    if (self.isModuleSelected) {
        return [UIImage systemImageNamed:@"doc.on.clipboard"];
    }
    return [UIImage systemImageNamed:@"doc.on.clipboard.fill"];
}

- (UIColor *)selectedColor {
    return [UIColor systemRedColor];
}

- (BOOL)isSelected {
    return self.isModuleSelected;
}

- (void)setSelected:(BOOL)selected {
    self.isModuleSelected = selected;

    if (self.messagingCenter == nil) {
        self.messagingCenter = [objc_getClass("CPDistributedMessagingCenter") centerNamed:@"com.pookjw.nopasteboardmessagecenter"];
        rocketbootstrap_distributedmessagingcenter_apply(self.messagingCenter);
	    [self.messagingCenter runServerOnCurrentThread];
        [self.messagingCenter registerForMessageName:@"requestStatus" target:self selector:@selector(handleMessageNamed:withUserInfo:)];
    }

    [self reconfigureView];
}

// Communication with UIPasteboard...
- (NSDictionary *)handleMessageNamed:(NSString *)name withUserInfo:(NSDictionary *)userinfo {
	return @{@"status": [NSNumber numberWithBool:[self isSelected]]};
}
@end