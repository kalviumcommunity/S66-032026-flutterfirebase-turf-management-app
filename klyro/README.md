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

# Stateless and Stateful Widgets Demo

## Project Title
Stateless and Stateful Widgets Demo

## Short Description
This demo app showcases the fundamental concepts of Stateless and Stateful widgets in Flutter. It includes a static header using a StatelessWidget and an interactive counter using a StatefulWidget to demonstrate how each type handles UI updates.

## Explanation of Stateless and Stateful Widgets

### Stateless Widget
A StatelessWidget does not store any mutable state — once built, it does not change until rebuilt by its parent. Use it for static UI components that remain constant, such as labels, icons, or static text.

### Stateful Widget
A StatefulWidget maintains internal state that can change during the app's lifecycle. It can update its UI dynamically in response to user actions, animations, or data changes. The setState() method rebuilds only the parts of the UI that change.

## Code Snippets

### Stateless Widget Example
```dart
class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Interactive Counter App',
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    );
  }
}
```

### Stateful Widget Example
```dart
class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int count = 0;

  void increment() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Count: $count',
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: increment,
          child: Text('Increase'),
        ),
      ],
    );
  }
}
```

## Screenshots

### Initial UI State
![Initial UI](initial_ui.png)

### Updated UI After Interaction
![Updated UI](updated_ui.png)

## Reflection

### How do Stateful widgets make Flutter apps dynamic?
Stateful widgets allow Flutter apps to be dynamic by maintaining mutable state that can change over time. When the state changes, the widget rebuilds its UI using the setState() method, which triggers a re-render of the affected parts of the widget tree. This enables interactive features like counters, forms, animations, and real-time data updates, making the app responsive to user input and external events.

### Why is it important to separate static and reactive parts of the UI?
Separating static and reactive parts improves performance and maintainability. Stateless widgets for static content avoid unnecessary rebuilds, as they don't hold state and only rebuild when their parent does. Stateful widgets handle dynamic parts, ensuring only the changing elements update. This separation leads to more efficient rendering, easier debugging, and cleaner code architecture, as static UI is predictable and reactive UI is isolated.
