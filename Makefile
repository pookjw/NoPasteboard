TARGET := iphone:clang:latest:13.6
export ARCHS=arm64 arm64e
INSTALL_TARGET_PROCESSES = SpringBoard


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = FakePasteboard

FakePasteboard_FILES = Tweak.x
FakePasteboard_CFLAGS = -fobjc-arc
FakePasteboard_CFLAGS_LIBRARIES = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk
