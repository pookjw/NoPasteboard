#import <UIKit/UIKit.h>

%group HookUIPasteboard
%hook UIPasteboard
- (NSArray *)itemProviders {
	return nil;
}
- (_Bool)hasColors {
	return NO;
}
- (_Bool)hasImages{
	return NO;
}
- (_Bool)hasURLs{
	return NO;
}
- (_Bool)hasStrings{
	return NO;
}
- (NSArray *)colors {
	return nil;
}
- (NSArray *)images {
	return nil;
}
- (NSArray *)URLs {
	return nil;
}
- (NSArray *)strings {
	return nil;
}
- (UIColor *)color {
	return nil;
}
- (UIImage *)image {
	return nil;
}
- (NSURL *)URL {
	return nil;
}
- (NSString *)string {
	return nil;
}
%end

%hook _UIConcretePasteboard
- (id)itemProviders {
	return nil;
}
- (_Bool)hasColors {
	return NO;
}
- (_Bool)hasImages{
	return NO;
}
- (_Bool)hasURLs{
	return NO;
}
- (_Bool)hasStrings{
	return NO;
}
- (id)colors {
	return nil;
}
- (id)images {
	return nil;
}
- (id)URLs {
	return nil;
}
- (id)strings {
	return nil;
}
- (id)color {
	return nil;
}
- (id)image {
	return nil;
}
- (id)URL {
	return nil;
}
- (id)string {
	return nil;
}
- (id)items {
	return nil;
}

- (id)dataForPasteboardType:(id)arg1 {
	return nil;
}
%end
%end

%ctor {
	%init(HookUIPasteboard)
}