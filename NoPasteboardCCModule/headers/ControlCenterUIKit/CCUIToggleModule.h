#import <objc/NSObject.h>
@interface CCUIToggleModule : NSObject
- (id)contentViewControllerForContext:(id)arg1;
- (void)reconfigureView;
- (void)refreshState;
@property(readonly, copy, nonatomic) UIColor *selectedColor; // @dynamic selectedColor;
@property(readonly, copy, nonatomic) UIImage *selectedIconGlyph; // @dynamic selectedIconGlyph;
@property(readonly, copy, nonatomic) UIImage *iconGlyph; // @dynamic iconGlyph;
@property(nonatomic, getter=isSelected) _Bool selected; // @dynamic selected;

@end

