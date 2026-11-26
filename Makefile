# iOS-only build entry point.  Usage:  make ios   (macOS + Xcode required)
.PHONY: ios ios-sim clean

JOBS := $(shell sysctl -n hw.logicalcpu 2>/dev/null || echo 4)

ios:
	$(MAKE) -f misc/ios/Makefile -j $(JOBS)

ios-sim:
	$(MAKE) -f misc/ios/Makefile -j $(JOBS) IOS_SIM=1

clean:
	rm -rf build Payload *.ipa
