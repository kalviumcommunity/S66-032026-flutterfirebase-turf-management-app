# Community Turf Booking App - Sprint 2

## Project Overview
This project is a mobile application designed to resolve scheduling conflicts and prevent double-booking for community sports groups reserving local turfs. This initial deliverable establishes the foundational Flutter architecture and implements the primary welcome interface.

## Folder Structure
To ensure scalability and maintainability, this project follows a modular directory structure:

* **`lib/main.dart`**: The entry point of the application. Handles global theme settings and routing initialization.
* **`lib/screens/`**: Contains the full-page UI layouts (e.g., `welcome_screen.dart`). Each file represents a distinct view the user can navigate to.
* **`lib/widgets/`**: Reserved for reusable, smaller UI components (e.g., custom buttons, input fields) to keep screen files clean.
* **`lib/models/`**: Will store Dart classes representing our data structures (e.g., `Turf`, `Booking`, `User`).
* **`lib/services/`**: Will handle external communications, such as Firebase authentication or backend API calls for fetching turf availability.

### Naming Conventions
* **Files/Directories**: `snake_case` (e.g., `welcome_screen.dart`).
* **Classes/Widgets**: `PascalCase` (e.g., `WelcomeScreen`).
* **Variables/Methods**: `camelCase` (e.g., `_isSearching`, `_toggleSearch()`).

## Setup Instructions
1. Ensure you have the [Flutter SDK](https://docs.flutter.dev/get-started/install) installed and configured.
2. Clone this repository to your local machine.
3. Open the project in VS Code or Android Studio.
4. Run `flutter pub get` in your terminal to fetch dependencies.
5. Ensure an emulator is running or a physical device is connected.
6. Run the app using the `flutter run` command or your IDE's run button.

## Reflection
This sprint provided hands-on experience with Flutter's widget tree and Dart's reactive state management. Building the `WelcomeScreen` demonstrated how `StatefulWidget` allows the UI to dynamically respond to user interactions (like toggling the search button). Setting up the modular folder structure right away makes it clear how dividing UI, data models, and business logic will keep the codebase manageable as we add complex scheduling and calendar features in upcoming sprints.

## Demo
![App Screenshot](https://res.cloudinary.com/dtepzmcs3/image/upload/v1772447694/Screenshot_20260302_155430_bicz16.jpg)
## Responsive UI Implementation (Sprint 2)
This sprint introduces `responsive_home.dart`, demonstrating adaptive cross-device interfaces. 
We handled varying screen sizes by using `LayoutBuilder` and `MediaQuery` to toggle between a single-column scrolling layout for smartphones, and a two-column structural grid for tablets and desktops.

### Demonstration
#### Mobile Layout vs Tablet Layout
![Mobile vs Tablet App Screenshot](https://res.cloudinary.com/dtepzmcs3/image/upload/v1772447694/Screenshot_20260302_155430_bicz16.jpg)
*(Note: A single screenshot is used here as a placeholder for both orientations)*

### Key Implementation Details
We capture the screen width dynamically:
```dart
final double screenWidth = MediaQuery.of(context).size.width;
final bool isTablet = screenWidth > 600;
```

And structure the tree based on constraints:
```dart
child: LayoutBuilder(
  builder: (context, constraints) {
    if (isTablet) {
      return _buildTabletLayout(context, constraints);
    } else {
      return _buildMobileLayout(context, constraints);
    }
  },
),
```

### Reflection
Building this layout underscored the importance of not just scaling widgets infinitely, but fundamentally rethinking screen real-estate. The challenge was ensuring that elements like `GridView` cross-axis counts and typography scaling felt natural rather than merely "stretched." Responsive design is critical because users expect apps to feel natively optimized for the specific hardware they are holding, rather than dealing with cropped text or comically massive buttons.
