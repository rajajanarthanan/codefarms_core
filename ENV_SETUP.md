# Environment Variables Setup

This project uses `flutter_dotenv` to manage sensitive Firebase configuration data from a `.env` file loaded at runtime.

## Setup Instructions

1. **Copy the example file:**
   ```bash
   cp .env.example .env
   ```

2. **Fill in your Firebase configuration values** in the `.env` file with your actual credentials.

3. **The `.env` file is loaded from assets:**
   
   The `.env` file is included in `pubspec.yaml` under assets and loaded at runtime using `flutter_dotenv`.


## Environment Variables

All environment variables are documented in `.env.example`. The main categories are:

- **Firebase Project Configuration**: Project ID and region
- **Google Sign-In Configuration**: Client IDs for Google authentication
- **Platform-specific Firebase configs**: Separate configurations for Web, Android, and iOS

## How It Works

1. The `.env` file is loaded as an asset at runtime using `flutter_dotenv`
2. Environment variables are accessed via `dotenv.env['VARIABLE_NAME']`
3. The `.env` file must be listed in `pubspec.yaml` under assets:
   ```yaml
   flutter:
     assets:
       - .env
   ```

4. Initialize dotenv in your app's main function:
   ```dart
   import 'package:flutter_dotenv/flutter_dotenv.dart';

   Future<void> main() async {
     await dotenv.load(fileName: ".env");
     runApp(MyApp());
   }
   ```

## Security Notes

- The `.env` file is already in `.gitignore` and should **never** be committed to version control
- Use `.env.example` as a template for team members to create their own `.env` files
- For CI/CD, ensure your `.env` file is injected during the build process using secure secrets management
- **Note**: Since the `.env` file is bundled as an asset, the values are included in the compiled app. For maximum security with sensitive data, consider using platform-specific secure storage or backend configuration
```
