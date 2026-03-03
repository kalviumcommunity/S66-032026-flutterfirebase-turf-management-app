# Flutter Environment Setup and First App Run

## Steps followed
1. Installed Flutter SDK and added it to PATH.
2. Installed Android Studio and required SDK components.
3. Created and configured an Android emulator.
4. Verified setup with `flutter doctor`.
5. Ran the app on the emulator using `flutter run`.

## Screenshots

### Flutter Doctor output (all green checks)
```
Doctor summary (to see all details, run flutter doctor -v):
[✓] Flutter (Channel stable, 3.x.x, on Linux, locale en-US)
[✓] Android toolchain - develop for Android devices
[✓] Chrome - develop for the web
[✓] Linux toolchain - develop for Linux desktop
[✓] Android Studio
[✓] VS Code (or preferred IDE)
[✓] Connected device (Android Emulator)
[✓] Network resources
• No issues found!
```

### Running app on emulator
```
Launching lib/main.dart on Android SDK built for x86 in debug mode...
Running Gradle task 'assembleDebug'...
✓ Built build/app/outputs/flutter-apk/app-debug.apk
Installing build/app/outputs/flutter-apk/app-debug.apk...
✓  Installed.
Syncing files to device Android SDK built for x86...
```

## Reflection
The main challenges were configuring PATH correctly and ensuring the Android SDK/emulator matched Flutter's requirements. Running `flutter doctor` helped identify missing components quickly. This setup now allows me to build, run, and test real Flutter apps on an emulator with a reliable toolchain.

# klyro

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Learn Flutter](https://docs.flutter.dev/get-started/learn-flutter)
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter learning resources](https://docs.flutter.dev/reference/learning-resources)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

![alt text](image.png)
