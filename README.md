# Community Turf Booking App - Sprint 2 (klyro)

## 📱 Project Overview
This project is a **mobile application designed to resolve scheduling conflicts and prevent double-booking** for community sports groups reserving local turfs. The app leverages **Flutter for cross-platform development** and **Firebase for real-time authentication and data management**.

### What is klyro?
**klyro** (the internal codename) is a community-driven turf booking platform that helps users:
- ✅ Browse and filter available sports turfs (cricket, football, tennis, badminton, etc.)
- ✅ Check real-time availability and prevent double-booking
- ✅ Book turfs with integrated payment and confirmation
- ✅ Manage their profile and booking history
- ✅ Get responsive experience across mobile, tablet, and web platforms

### Technology Stack
- **Frontend**: Flutter 3.11.0+, Dart
- **Backend**: Firebase (Authentication, Firestore Database, Cloud Functions)
- **Authentication**: Firebase Auth + Google Sign-In
- **Platforms**: Android, iOS, Web, Windows, Linux, macOS

---

## 📁 Folder Structure

### Quick Overview
For a **comprehensive understanding** of the folder structure, refer to **[PROJECT_STRUCTURE.md](PROJECT_STRUCTURE.md)** which includes:
- Detailed folder hierarchy with visual diagrams
- Purpose of each directory and file
- Naming conventions and code organization patterns
- Best practices for scalability and team collaboration

### Key Directories
```
klyro/
├── lib/                    # 🎯 Core app logic
│   ├── main.dart          # App entry point & Firebase init
│   ├── screens/           # Full-page UI components
│   ├── services/          # Business logic (Auth, API calls)
│   ├── theme/             # Design system & styling
│   ├── widgets/           # [Reserved] Reusable components
│   └── models/            # [Reserved] Data structures
├── android/               # Android platform config
├── ios/                   # iOS platform config
├── web/                   # Web platform files
├── test/                  # Automated tests
├── pubspec.yaml           # Dependencies & configuration
└── README.md              # This file
```

### Naming Conventions
* **Files/Directories**: `snake_case` (e.g., `login_screen.dart`)
* **Classes/Widgets**: `PascalCase` (e.g., `LoginScreen`)
* **Variables/Methods**: `camelCase` (e.g., `_isLoading`, `_submitForm()`)

## 🚀 Setup Instructions

### Prerequisites
- ✅ [Flutter SDK](https://docs.flutter.dev/get-started/install) (3.11.0 or higher)
- ✅ [Dart SDK](https://dart.dev/get-dart) (included with Flutter)
- ✅ Git version control
- ✅ Android Studio or Xcode (for platform-specific development)
- ✅ Firebase project (for authentication and database)

### Initial Setup
1. **Clone the repository**:
   ```bash
   git clone <repository-url>
   cd klyro
   ```

2. **Install dependencies**:
   ```bash
   flutter pub get
   ```

3. **Verify Flutter setup**:
   ```bash
   flutter doctor
   ```
   Ensure all required platforms show a checkmark ✓.

4. **Run the app**:
   ```bash
   # On an emulator or connected device
   flutter run
   
   # Or specify a device
   flutter run -d chrome        # Web
   flutter run -d emulator-5554 # Android emulator
   ```

### Firebase Configuration
The app uses Firebase for authentication and data management.

- **Android**: Configuration is in `android/app/google-services.json`
- **iOS**: Configuration is in `ios/Runner/Info.plist`
- **Web**: Configuration is in `lib/firebase_options.dart` (auto-generated)

**To set up Firebase for your own project:**
1. Create a Firebase project at [firebase.google.com](https://firebase.google.com)
2. Enable Authentication (Email/Password, Google Sign-In)
3. Create a Firestore database
4. Download configuration files for each platform
5. Configure Google Sign-In OAuth consent screen

### Environment Configuration
Key configuration files:
- `lib/firebase_options.dart` — Firebase initialization for current platform
- `android/app/build.gradle.kts` — Android app configuration
- `ios/Runner/Info.plist` — iOS app metadata and permissions

## 🎯 Current Implementation Status

### Completed Features (Sprint 2)
- ✅ Firebase authentication setup (Email, Password, Google Sign-In)
- ✅ User login and signup screens
- ✅ Dashboard with navigation
- ✅ Venue listing and venue details screens
- ✅ User profile screen
- ✅ Responsive UI design (mobile, tablet, desktop)
- ✅ App theme and styling system

### In-Progress / Reserved
- 📋 Data models (`User`, `Turf`, `Booking`)
- 📋 Reusable widget components library
- 📋 Payment integration
- 📋 Real-time booking notifications
- 📋 Admin dashboard for venue management

---

## 💡 Reflection: Why Project Structure Matters

### 1. **Understanding Folder Organization**
A well-organized folder structure is **crucial for professional app development** because it:

- **Reduces Learning Curve**: New team members can quickly understand the codebase by mapping features to folder locations
- **Enables Parallel Development**: Multiple developers can work on different features (screens, services) simultaneously without conflicts
- **Simplifies Debugging**: When a bug occurs, developers know exactly where to look based on the feature type (UI → `screens/`, logic → `services/`)
- **Facilitates Code Reviews**: Reviewers can focus on specific concerns (is this a UI issue? A business logic issue?) based on file location

### 2. **Impact on Team Collaboration**
Consider these scenarios:

**Scenario A: Poor Organization** 
```
lib/
├── home.dart
├── auth.dart
├── filter.dart
├── database.dart
├── theme.dart
└── utils.dart
```
**Problems**: 
- Hard to find related code (Where is the login screen? Which file handles Firebase auth?)
- Developers step on each other's toes (Everyone modifying the same large files)
- Testing becomes difficult (Mixed UI and business logic)

**Scenario B: Modular Organization** ✅
```
lib/
├── screens/         # One file per screen
├── services/        # External integrations
├── theme/          # Design system
└── models/         # Data structures
```
**Benefits**:
- Clear ownership (Developer A owns `screens/venue_listing_screen.dart`, Developer B owns `services/firebase_service.dart`)
- Easy to add features without breaking existing code
- Testing is isolated (Unit test services separately from UI)
- Code reuse (Share theme and models across screens)

### 3. **Scalability in Growing Projects**
As the app grows from 1 developer → 5 developers → 20 developers:

| Team Size | Challenge | Well-Structured Solution |
|-----------|-----------|--------------------------|
| **1-2** | Prototyping speed | Modular structure prevents unnecessary refactoring |
| **3-5** | Parallel work without conflicts | Clear folder boundaries minimize merge conflicts |
| **10+** | Feature teams working independently | Each team owns their `screens/`, `services/`, `models/` |

With **klyro** growing to include:
- **Venue Module**: Browse, filter, and book turfs
- **Payment Module**: Secure payment processing
- **Admin Module**: Venue management dashboard
- **Notifications Module**: Real-time booking updates

...a modular structure **prevents these modules from tangling** together.

### 4. **Long-Term Maintenance**
In 1 year, when features are added and refactored:

- **Without structure**: "Where is the old booking logic?" (Hours spent searching)
- **With structure**: "Look in `services/` for the business logic, `screens/` for UI" (Minutes to find)

**Bottom Line**: A 20% time investment in good structure now saves 200% time in long-term maintenance.

---

## 📸 Project Folder Hierarchy (IDE View)

Here's what the project looks like when opened in VS Code or Android Studio:

```
klyro/
├── 📁 lib/
│   ├── 📄 main.dart                        # Entry point
│   ├── 📄 firebase_options.dart            # Firebase config
│   ├── 📁 screens/
│   │   ├── 📄 login_screen.dart
│   │   ├── 📄 signup_screen.dart
│   │   ├── 📄 dashboard_screen.dart
│   │   ├── 📄 venue_listing_screen.dart
│   │   ├── 📄 venue_details_screen.dart
│   │   ├── 📄 profile_screen.dart
│   │   ├── 📄 main_navigation_screen.dart
│   │   ├── 📄 welcome_screen.dart
│   │   └── 📄 responsive_home.dart
│   ├── 📁 services/
│   │   └── 📄 auth_service.dart            # Firebase auth logic
│   └── 📁 theme/
│       └── 📄 app_theme.dart               # Global theme config
├── 📁 android/                             # Android build files
├── 📁 ios/                                 # iOS build files
├── 📁 web/                                 # Web build files
├── 📁 test/
│   └── 📄 widget_test.dart
├── 📄 pubspec.yaml                         # Dependencies
├── 📄 analysis_options.yaml                # Linter config
├── 📄 README.md                            # This file
└── 📄 PROJECT_STRUCTURE.md                 # Detailed structure guide
```

---

## 📚 Demo & Visual Overview

### App Screenshots

#### Responsive UI Implementation (Sprint 2)
This sprint introduces **`responsive_home.dart`**, demonstrating adaptive cross-device interfaces. 

We handled varying screen sizes by using:
- `LayoutBuilder` — Dynamically adjust layout based on constraints
- `MediaQuery` — Detect screen dimensions and orientation
- Conditional layouts — Single column on mobile, two-column grid on tablets

**Mobile vs Tablet Layout:**
```dart
final double screenWidth = MediaQuery.of(context).size.width;
final bool isTablet = screenWidth > 600;

if (isTablet) {
  return Row(                    // Horizontal layout for tablets
    children: [sidebar, mainContent],
  );
} else {
  return Column(                 // Vertical layout for phones
    children: [mainContent],
  );
}
```

**Current Demo Screenshot:**  
![Mobile App Screenshot](https://res.cloudinary.com/dtepzmcs3/image/upload/v1772447694/Screenshot_20260302_155430_bicz16.jpg)

*(Note: Tablet layout demo to be added in next sprint)*

---

## 🧭 Multi-Screen Navigation

This project uses **named routes** for clean, scalable navigation between screens.

### Route Definitions

All routes are defined in `lib/main.dart` using an `AppRoutes` class:

```dart
class AppRoutes {
  static const String home = '/';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String profile = '/profile';
  static const String venueDetails = '/venue-details';
  static const String venueListing = '/venue-listing';
}
```

Routes are registered in `MaterialApp`:
```dart
MaterialApp(
  home: /* Auth-based StreamBuilder */,
  routes: {
    AppRoutes.login: (context) => const LoginScreen(),
    AppRoutes.signup: (context) => const SignupScreen(),
    AppRoutes.profile: (context) => const ProfileScreen(),
    AppRoutes.venueListing: (context) => const VenueListingScreen(),
  },
  onGenerateRoute: (settings) {
    if (settings.name == AppRoutes.venueDetails) {
      final args = settings.arguments as Map<String, dynamic>?;
      return MaterialPageRoute(
        builder: (context) => VenueDetailsScreen(venueData: args),
      );
    }
    return null;
  },
);
```

### Navigation with Named Routes

**Push to a new screen:**
```dart
// Navigate to Profile
Navigator.pushNamed(context, AppRoutes.profile);

// Navigate to Signup
Navigator.pushNamed(context, AppRoutes.signup);
```

**Pop back to previous screen:**
```dart
Navigator.pop(context);
```

### Passing Data Between Screens

Venue data is passed from the listing to details via `arguments`:

```dart
// In venue_listing_screen.dart — sending data
Navigator.pushNamed(
  context,
  AppRoutes.venueDetails,
  arguments: {
    'name': 'Trophy Fighters',
    'image': 'https://...',
    'rating': 4.5,
  },
);

// In venue_details_screen.dart — receiving data
class VenueDetailsScreen extends StatelessWidget {
  final Map<String, dynamic>? venueData;
  const VenueDetailsScreen({super.key, this.venueData});

  @override
  Widget build(BuildContext context) {
    final venueName = venueData?['name'] ?? 'Default Venue';
    // ... use venueName in the UI
  }
}
```

### Navigation Flow

```
LoginScreen  ──pushNamed──►  SignupScreen
     │                            │
     │ (auth success)             │ (auth success)
     ▼                            ▼
MainNavigationScreen (tabs: Book | Home | More)
     │                    │             │
     │                    │             ▼
     │                    │      ResponsiveHomeScreen
     │                    ▼
     │             DashboardScreen ──pushNamed──► ProfileScreen
     ▼
VenueListingScreen ──pushNamed(args)──► VenueDetailsScreen
```

### 📸 Screenshots

> **Note:** Replace with actual screenshots from your demo session.

1. **Home / Dashboard Screen** — main navigation with three tabs
2. **Venue Listing** → **Venue Details** — navigation with data passing
3. **Login** → **Signup** — named route navigation

### 💭 Reflection

**How does Navigator manage the app's stack of screens?**
Navigator maintains a stack (LIFO) of routes. When you call `pushNamed()`, a new route is pushed on top of the stack. When you call `pop()`, the top route is removed, revealing the previous screen. This stack-based approach gives users a predictable "back" navigation experience.

**What are the benefits of using named routes in larger applications?**
Named routes centralize routing logic in one place (`main.dart`), making it easy to see all available screens at a glance. They eliminate scattered `MaterialPageRoute` constructors across the codebase, reduce coupling between screens (screens don't need to import each other), and make deep linking straightforward. The `AppRoutes` constants prevent typos and enable IDE auto-completion.

---

## 🔧 Common Development Tasks

### Adding a New Screen
1. Create `lib/screens/feature_screen.dart`
2. Extend `StatefulWidget` or `StatelessWidget`
3. Add route in `main_navigation_screen.dart`
4. Test navigation

### Adding Business Logic
1. Create/extend a service in `lib/services/`
2. Call service from screen's `initState()` or state changes
3. Update UI based on service response

### Customizing Theme
1. Edit `lib/theme/app_theme.dart`
2. Update colors, fonts, button styles
3. Hot reload to preview changes (`Ctrl+\` in VS Code)

### Running Tests
```bash
flutter test                    # Run all tests
flutter test test/widget_test.dart  # Run specific test
```

---

## 🤝 Team Development Best Practices

### Code Ownership
- **Prabhdeep Singh**: Overall architecture, Firebase integration, theme
- **[Team Member 2]**: Venue screens and listing features
- **[Team Member 3]**: Payment and booking logic
- **[Team Member 4]**: Android/iOS platform-specific code

### Git Workflow
```bash
# Create feature branch
git checkout -b feature/venue-booking

# Make changes (following folder structure)
flutter pub get
flutter format .          # Format code
flutter analyze          # Check for lint issues

# Commit with clear messages
git commit -m "Add venue booking feature"

# Push and create pull request
git push origin feature/venue-booking
```

### Code Review Checklist
- ✅ Follows naming conventions (snake_case, PascalCase, camelCase)
- ✅ Added in correct folder (Screen in `screens/`? Service in `services/`?)
- ✅ No duplicate code (Check if similar code exists elsewhere)
- ✅ Includes error handling
- ✅ Widget tests added for new components
- ✅ No breaking changes to public APIs

---

## 📖 Additional Resources

### Official Documentation
- [Flutter Documentation](https://docs.flutter.dev/)
- [Dart Language Guide](https://dart.dev/guides)
- [Firebase for Flutter](https://firebase.flutter.dev/)
- [Flutter Best Practices](https://docs.flutter.dev/development/best-practices)

### Project-Specific Guides
- 📄 [PROJECT_STRUCTURE.md](PROJECT_STRUCTURE.md) — Detailed folder structure and conventions
- 🐛 [Troubleshooting](#troubleshooting) — Common issues and solutions
- 🔗 [Team Collaboration Guidelines](#team-development-best-practices)

### Visual Resources
- [Responsive Design Guide](https://docs.flutter.dev/development/ui/layout/responsive)
- [Firebase Console](https://console.firebase.google.com/)
- [Material Design System](https://m3.material.io/)

---

## 🐛 Troubleshooting

### Common Issues

**Q: `flutter pub get` fails**
```bash
# Clear cache and retry
flutter clean
flutter pub get
```

**Q: Firebase authentication not working**
- Verify `google-services.json` (Android) is in `android/app/`
- Check Firebase Console for authentication method being enabled
- Ensure app package name matches Firebase project configuration

**Q: Hot reload not updating UI**
- Try hot restart: `R` in terminal (full app restart)
- Or `flutter run` to rebuild completely

**Q: Build fails on iOS**
```bash
cd ios
pod repo update
pod install
cd ..
flutter run
```

**Q: App icon not showing**
- Regenerate icons: Run `flutter pub get` to ensure `flutter_launcher_icons` is installed
- Rebuild: `flutter clean && flutter run`

---

## 📝 Version History

### Sprint 2 (Current) — March 5, 2026
- ✅ Enhanced project documentation
- ✅ Created comprehensive PROJECT_STRUCTURE.md
- ✅ Implemented responsive UI design
- ✅ Firebase integration complete
- ✅ Authentication screens (Login, Signup)
- ✅ Venue browsing and details screens

### Sprint 1 — February 2026
- ✅ Project initialization
- ✅ Flutter setup and configuration
- ✅ Welcome screen implementation
- ✅ Basic theme system

---

## 📋 Future Roadmap

### Sprint 3 (Planned)
- [ ] Payment integration (Stripe/Razorpay)
- [ ] Real-time booking notifications
- [ ] User reviews and ratings
- [ ] Search filters and sorting

### Sprint 4 (Planned)
- [ ] Admin dashboard
- [ ] Venue management features
- [ ] Advanced calendar integration
- [ ] Analytics dashboard

### Future Enhancements
- [ ] Multi-language support (i18n)
- [ ] Dark mode support
- [ ] Offline-first capabilities
- [ ] Performance optimization
- [ ] AI-powered recommendations

---

## 📞 Support & Contact

For questions, issues, or contributions:

1. **Check documentation**: First, refer to [PROJECT_STRUCTURE.md](PROJECT_STRUCTURE.md)
2. **Search existing issues**: Look in the repository's issue tracker
3. **Create new issue**: Provide detailed description and steps to reproduce
4. **Contact project lead**: Reach out to Prabhdeep Singh for architecture questions

---

## 📄 License

This project is private and not licensed for public distribution.

---

## 🎉 Conclusion

The **Community Turf Booking App (klyro)** demonstrates professional Flutter development practices. The modular folder structure, clear naming conventions, and well-documented codebase ensure that:

✅ **Scalability** — Easy to add new features
✅ **Maintainability** — Clear separation of concerns
✅ **Collaboration** — Multiple developers can work efficiently
✅ **Quality** — Consistent patterns and best practices

By investing in proper structure and documentation now, we're building a foundation that supports rapid growth and protects code quality as the project scales.

---

**Last Updated**: March 5, 2026  
**Maintained By**: Prabhdeep Singh  
**Project Repository**: [S66-032026-flutterfirebase-turf-management-app](.)

