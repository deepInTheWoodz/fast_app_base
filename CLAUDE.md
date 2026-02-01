# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Flutter application cloning the Korean fintech app Toss. Single Flutter app (not a monorepo) targeting Android, iOS, Web, Linux, macOS, and Windows. Dart SDK ^3.6.1.

## Common Commands

```bash
# Install dependencies
flutter pub get

# Run code generation (freezed, retrofit, json_serializable, isar)
flutter pub run build_runner build --delete-conflicting-outputs

# Run the app
flutter run

# Run tests
flutter test

# Lint/analyze
flutter analyze

# Format code
dart format lib/
```

## Architecture

**State Management:** GetX (`get` package) for state management and DI.

**Navigation:** `Nav` mixin on `AppState` with a global `NavigatorState` key. Tab-based bottom navigation with 5 tabs (Home, Benefit, TossPay, Stock, All).

**Theme System:** Custom `CustomThemeApp` wrapper providing light/dark mode via `CustomTheme` enum. Theme colors use abstract base classes (`AbstractThemeColors`, `AbsThemeShadows`) with concrete implementations per theme.

**Localization:** `easy_localization` with EN/KO support. Translation JSON files in `assets/translations/`.

**Networking:** Retrofit + Dio for REST API calls. Error handling uses a `SimpleResult<Success, Failure>` pattern (Either-like).

**Code Generation:** `build_runner` generates `*.freezed.dart` and `*.g.dart` files. Always run build_runner after modifying model classes annotated with `@freezed` or `@JsonSerializable`.

**Local Storage:** `SharedPreferences` via `AppPreferences` singleton (initialized in `main()`). Isar DB scaffolding exists but is currently disabled.

## Code Structure

- `lib/common/` - Shared utilities, extensions, theme, widgets, localization
- `lib/common/dart/extension/` - Dart extensions on `BuildContext`, collections, animation controllers
- `lib/common/widget/` - Reusable UI components (buttons, badges, app bars)
- `lib/data/` - Data layer (network error handling, local storage)
- `lib/screen/` - UI screens organized by feature (splash, main tabs, dialogs)
- `lib/screen/main/tab/` - Bottom navigation tab screens (home, benefit, favorite)
- `lib/app.dart` - Root `App` widget with lifecycle handling
- `lib/main.dart` - Entry point, initializes localization and preferences

## Key Patterns

- Heavy use of Dart extensions for `BuildContext` (device size, theme access), collections, and animation
- `common/dart/kotlin_style/` provides Kotlin-style utility patterns in Dart
- Widgets are theme-aware, accessing colors/shadows through context extensions
- App entry initializes `EasyLocalization` and `App/Preferences` before `runApp`