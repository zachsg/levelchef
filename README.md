# LevelChef


## Getting Started


## Building
- `flutter clean`
- `flutter pub get`
- Delete Podfile.lock
- `arch -x86_64 pod repo update`
- `arch -x86_64 pod install`

Code generation:
- `flutter pub run build_runner watch --delete-conflicting-outputs` 
Or:
- `dart run build_runner watch`

Splash page:
1. `flutter pub run flutter_native_splash:remove`
2. `flutter pub run flutter_native_splash:create`

### Release builds
Android: build app bundle:
- `flutter build appbundle`

iOS:
1. Open XCWorkspace file in ios/ directory in Xcode
2. Set build target to `Any iOS device (arm64)
3. Product > Archive
4. Go through distribution flow once built to send to Appstore Connect