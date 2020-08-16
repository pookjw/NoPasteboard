TARGET := iphone:clang:latest:13.6.1
export ARCHS=arm64 arm64e
INSTALL_TARGET_PROCESSES = SpringBoard
PACKAGE_VERSION=1.0.3

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = NoPasteboard

$(TWEAK_NAME)_LIBRARIES = rocketbootstrap
$(TWEAK_NAME)_FILES = Tweak.x
$(TWEAK_NAME)_CFLAGS +=  -fobjc-arc -I$(THEOS_PROJECT_DIR)/headers

include $(THEOS_MAKE_PATH)/tweak.mk
