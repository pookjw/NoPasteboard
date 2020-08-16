TARGET := iphone:clang:latest:13.6
export ARCHS=arm64 arm64e
INSTALL_TARGET_PROCESSES = SpringBoard


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = NoPasteboard

NoPasteboard_FILES = Tweak.x
NoPasteboard_CFLAGS = -fobjc-arc
NoPasteboard_CFLAGS_LIBRARIES = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk
