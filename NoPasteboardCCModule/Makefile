TARGET := iphone:clang:latest:13.6.1
export ARCHS=arm64 arm64e

INSTALL_TARGET_PROCESSES = SpringBoard
include $(THEOS)/makefiles/common.mk
BUNDLE_NAME = NoPasteboardCCModule
$(BUNDLE_NAME)_BUNDLE_EXTENSION = bundle
$(BUNDLE_NAME)_CFLAGS +=  -fobjc-arc -I$(THEOS_PROJECT_DIR)/headers
$(BUNDLE_NAME)_LIBRARIES = rocketbootstrap
$(BUNDLE_NAME)_FILES = $(wildcard *.m)
$(BUNDLE_NAME)_LDFLAGS += $(THEOS_PROJECT_DIR)/Frameworks/ControlCenterUIKit.tbd
$(BUNDLE_NAME)_INSTALL_PATH = /Library/ControlCenter/Bundles/

include $(THEOS_MAKE_PATH)/bundle.mk
