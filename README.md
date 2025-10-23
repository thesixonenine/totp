# totp

TOTP

## Build

Create file `./android/local.properties`

```properties
sdk.dir=C:\\Users\\simple\\software\\Android\\Sdk
flutter.sdk=C:\\Users\\simple\\scoop\\apps\\flutter\\current
flutter.buildMode=release
flutter.versionName=1.0.0
flutter.versionCode=1
```

```shell
flutter build apk --target-platform android-arm64 --split-per-abi
```


## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
