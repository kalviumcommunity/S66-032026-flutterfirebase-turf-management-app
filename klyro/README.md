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

# Flutter Hot Reload, Debug Console, and DevTools Demo

## Project Title
Flutter Development Tools Demo

## Short Explanation
This section demonstrates the use of Flutter's Hot Reload feature, Debug Console for logging, and Flutter DevTools for debugging and performance analysis in the Turf Scheduler app.

## Steps Performed

### Using Hot Reload
1. Ran the app using `flutter run` in the terminal.
2. Modified a UI element (e.g., changed "Welcome Back" to "Welcome to Turf Scheduler" in `login_screen.dart`).
3. Saved the file, and the app updated instantly without restarting, preserving app state.

### Using Debug Console
1. Added `debugPrint()` statements in `login_screen.dart`:
   - In `_login()`: Logs email on attempt, success, or failure.
   - In `_loginWithGoogle()`: Logs Google login attempts and outcomes.
2. Ran the app and performed login actions.
3. Viewed real-time logs in the Debug Console (terminal or VS Code output panel).

### Exploring Flutter DevTools
1. Activated DevTools: `flutter pub global activate devtools` then `flutter pub global run devtools`.
2. With the app running, opened DevTools in the browser.
3. Explored tabs:
   - **Widget Inspector**: Inspected the widget tree, selected elements, and viewed properties.
   - **Performance**: Monitored frame rendering times and identified bottlenecks.
   - **Memory**: Checked memory usage and potential leaks.
   - **Network**: Observed API calls (e.g., Firebase authentication requests).

## Screenshots

### Running App After Hot Reload Update
![Hot Reload Update](hot_reload_update.png)

### Debug Console Displaying Logs
![Debug Console Logs](debug_console_logs.png)

### Flutter DevTools Window (Widget Inspector)
![DevTools Widget Inspector](devtools_widget_inspector.png)

### Flutter DevTools Performance View
![DevTools Performance](devtools_performance.png)

## Reflection

### How does Hot Reload improve productivity?
Hot Reload allows instant application of code changes without restarting the app, preserving state and significantly speeding up UI iteration. This reduces development time by enabling quick testing of visual changes, layouts, and interactions, making the workflow more efficient and iterative.

### Why is DevTools useful for debugging and optimization?
DevTools provides visual tools for inspecting the widget tree, profiling performance, analyzing memory usage, and monitoring network requests. It helps identify UI issues, performance bottlenecks, and memory leaks early, enabling optimized, bug-free apps through interactive debugging and data-driven insights.

### How can you use these tools in a team development workflow?
In a team, Hot Reload facilitates rapid prototyping and collaborative UI reviews by allowing instant previews of changes. Debug Console logs aid in shared debugging sessions, while DevTools supports performance audits and code reviews. Teams can integrate these into CI/CD for automated checks, ensuring consistent quality and faster iterations across developers.
