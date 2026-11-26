# ClassiClient – iOS build repo

Stripped-down repository containing only what is needed to compile ClassiClient for iOS.

## Build with GitHub Actions (no Mac needed)
1. Push this repo to GitHub.
2. Open **Actions → Build iOS (ipa) → Run workflow**.
3. Download the `ClassiClient-iOS` artifact (an unsigned `.ipa`).

The .ipa is unsigned: sideload it with AltStore / Sideloadly / TrollStore, or re-sign it yourself.

## Build locally (macOS + Xcode)
```
make ios        # device build -> ClassiCube-iPhoneOS.ipa
make ios-sim    # simulator build
```
If your Xcode isn't `/Applications/Xcode.app`, or you need a specific SDK:
```
make ios ARM64_ONLY=1 IOS_MIN_VERSION=12.0 XCODE_APP=Xcode_16.0.0.app IOS_SDK_VERSION=18.0
```

Modern Xcode (16+) can't build 32-bit armv7 or iOS 6 targets, so CI uses `ARM64_ONLY=1 IOS_MIN_VERSION=12.0`.

## Layout
- `src/` – game source (+ `src/ios`, `src/darwin`, `src/freetype`)
- `third_party/bearssl` – TLS library
- `misc/ios` – Makefile, Info.plist, icons, Xcode project

ClassiClient is not affiliated with Mojang, Microsoft or ClassiCube. See `license.txt`.
