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
![App Screenshot]([![Insert your screenshot here](https://res.cloudinary.com/dtepzmcs3/image/upload/v1772447694/Screenshot_20260302_155430_bicz16.jpg)])