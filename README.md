# CodeFarms Core

**CodeFarms Core** is the shared resource hub for the CodeFarms platform - a Flutter library that provides common dependencies, services, entities, helpers, and widgets for all feature modules in the CodeFarms ecosystem.

## About CodeFarms

CodeFarms is an initiative by **AgentiqMinds LLP** to democratize software development. It's a collaborative platform where developers, designers, SMEs, and marketing partners join together to contribute and earn stakes in projects, sharing revenue through contractual agreements and tradeable crypto assets.

**Unlike D-Apps**, CodeFarms centralizes governance to ensure clients receive business continuity support and professional service delivery.

## Architecture Overview

The CodeFarms Flutter application follows a **modularized feature-based architecture**:

- **Feature Modules**: Each feature is developed as a separate Flutter project
- **Core Library** (this project): Provides shared resources and common functionality
- **Main Application**: Integrates all feature modules into a single deployable app

This architecture enables:
- Independent feature development by different teams
- Consistent shared functionality across all features
- Easier testing and maintenance
- Faster onboarding for new developers

## Purpose

The `codefarms_core` library serves as the **foundation** for all CodeFarms feature modules. Any developer building a new feature should add this library as a dependency to access:

- ✅ **Common Services**: API, Authentication, Firebase, Cloud Functions, File handling
- ✅ **Shared Entities**: Domain models used across features
- ✅ **Helper Functions**: Utilities for date handling, data conversion, and more
- ✅ **UI Widgets**: Reusable components like navigation bars, headers, sidebars
- ✅ **Dependency Injection**: Pre-configured GetIt setup with Injectable
- ✅ **Theme & Styling**: Consistent design system with Google Fonts
- ✅ **Routing**: Go Router configuration
- ✅ **Firebase Integration**: Pre-configured Firebase services and emulators

## Project Structure

```
lib/
├── codefarms_core.dart          # Main export file
├── di/                          # Dependency Injection
│   ├── getit.dart              # GetIt instance
│   ├── injection.dart          # DI configuration
│   └── injection.config.dart   # Generated injectable config
├── domain/
│   └── entities/               # Shared domain entities
│       ├── code_farms_project_entity.dart
│       ├── contribution_entity.dart
│       ├── kyc_status_entity.dart
│       ├── payment_record_entity.dart
│       ├── profile_entity.dart
│       └── social_share_entity.dart
├── helpers/                    # Utility functions
│   ├── date_helpers.dart
│   └── helpers.dart           # Data conversion utilities
├── resources/                  # App resources & constants
│   ├── agentiq_response.dart
│   ├── api_end_points.dart
│   ├── code_farms_firebase_options.dart
│   ├── firebase_emulators.dart
│   ├── insets.dart
│   └── themes.dart
├── routes/                     # Routing configuration
│   └── routes.dart
├── services/                   # Core services
│   ├── api_service.dart
│   ├── auth_service.dart
│   ├── cloud_functions_service.dart
│   ├── file_service.dart
│   └── init_firebase_app.dart
└── widgets/                    # Reusable UI components
    ├── app_bar/               # App bar components
    ├── bloc/                  # Shared BLoC (user session)
    ├── header_widgets/        # Header components
    ├── sidebar/               # Sidebar navigation
    ├── bottom_nav_bar_widget.dart
    ├── desktop_body_widget.dart
    └── footer.dart
```

## Getting Started

### For Feature Module Developers

#### 1. Add as Dependency

Add `codefarms_core` to your feature module's `pubspec.yaml`:

```yaml
dependencies:
  codefarms_core:
    # path: ../codefarms_core
    github: https:github.com/rajajanarthanan/codefarms_core #use the latest stable version
```

#### 2. Import in Your Code

```dart
import 'package:codefarms_core/codefarms_core.dart' as core;
```

This single import gives you access to:
- All services (API, Auth, Firebase, etc.)
- Domain entities
- Helper functions
- UI widgets
- Routing configuration
- Dependency injection setup

#### 3. Initialize Dependencies

In your feature module's main function or initialization:

```dart
import 'package:codefarms_core/codefarms_core.dart' as core;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize CodeFarms Core dependencies
  await core.configureDependencies();
  
  runApp(MyFeatureApp());
}
```

## Available Services

### Authentication Service
```dart
final authService = getIt<AgentiqAuthService>();
// or use FirebaseAuthService directly
```

### API Service
```dart
final apiService = getIt<ApiService>();
```

### Cloud Functions Service
```dart
final functionsService = getIt<CloudFunctionsService>();
```

### File Service
```dart
final fileService = getIt<FileService>();
```

## Key Features

### 🔥 Firebase Integration
- Pre-configured Firebase setup
- Emulator support for local development
- Firebase Authentication, Firestore, Storage, and Cloud Functions

### 🎨 UI Components
- Navigation bars (bottom nav, sidebar)
- Headers and footers
- Desktop-responsive layouts
- User session management with BLoC

### 🔧 Dependency Injection
- GetIt + Injectable setup
- Lazy singleton pattern for services
- Auto-generated configuration

### 📦 Shared Entities
Domain models with Freezed for immutability:
- Project entities
- Contribution tracking
- KYC status
- Payment records
- User profiles
- Social sharing

### 🛠️ Helper Utilities
- Date formatting and manipulation
- Deep data conversion (Map/List processing)
- Type-safe data structures

## Development

### Prerequisites
- Flutter SDK ^3.7.2
- Dart SDK ^3.7.2

### Building the Project

```bash
# Get dependencies
flutter pub get

# Generate code (for Injectable, Freezed, etc.)
flutter pub run build_runner build --delete-conflicting-outputs

# Run tests
flutter test
```

### Code Generation

This project uses code generation for:
- **Injectable**: Dependency injection configuration
- **Freezed**: Immutable entity classes
- **JSON Serializable**: JSON serialization (where applicable)

Always run the build_runner after modifying:
- Injectable annotations (`@injectable`, `@lazySingleton`, etc.)
- Freezed entities
- JSON serializable classes

## Dependencies

### Core Dependencies
- `agentiq`: AgentiqMinds custom package
- `flutter_bloc`: State management
- `get_it` + `injectable`: Dependency injection
- `go_router`: Navigation
- `dio`: HTTP client
- `dartz`: Functional programming utilities
- `freezed_annotation`: Immutable classes
- `google_fonts`: Typography
- `equatable`: Value equality

### Firebase
- `firebase_core`
- `firebase_auth`
- `cloud_firestore`
- `firebase_storage`
- `cloud_functions`
- `firebase_app_check`

### UI Components
- `flutter_svg`: SVG rendering
- `convex_bottom_bar`: Bottom navigation
- `google_nav_bar`: Navigation bar

## Contributing to Core

When adding new shared functionality:

1. **Services**: Add to `lib/services/` and export in `services.dart`
2. **Entities**: Add to `lib/domain/entities/` and export in `entities.dart`
3. **Widgets**: Add to `lib/widgets/` and export in `widgets.dart`
4. **Helpers**: Add to `lib/helpers/` and export in `helpers.dart`
5. **Resources**: Add constants/configs to `lib/resources/` and export in `resources.dart`

Always ensure backward compatibility when modifying existing exports.

## Platform Support

This core library supports all Flutter platforms:
- ✅ Android
- ✅ iOS
- ✅ Web
- ✅ Windows
- ✅ macOS
- ✅ Linux

## License

This project is proprietary to AgentiqMinds LLP and the CodeFarms platform.

## Support

For questions or issues related to CodeFarms Core:
- Contact the CodeFarms development team
- Refer to internal documentation
- Check the AgentiqMinds LLP knowledge base
---

**Built with ❤️ by the CodeFarms Community from AgentiqMinds**
