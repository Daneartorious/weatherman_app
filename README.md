# 🌤️ Weatherman 

![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)
![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)
![Android](https://img.shields.io/badge/Android-3DDC84?style=for-the-badge&logo=android&logoColor=white)

A production-ready, highly responsive Weather Application built with Flutter. This project demonstrates the implementation of modern mobile development practices, emphasizing clean architecture, **Separation of Concerns (SoC)**, and robust network error handling.

## 🚀 Key Features

*   **Real-Time Data Integration:** Seamlessly fetches and serializes live meteorological data (Temperature, Humidity, Wind Speed) via the OpenWeatherMap API.
*   **Dynamic UI Rendering:** Context-aware user interface that dynamically adapts primary assets based on specific weather condition codes (e.g., Clear, Rain, Thunderstorm, Snow).
*   **Architectural Modularity:** Strictly segregates the data layer (`WeatherService`) from the presentation layer (`main.dart`), ensuring a scalable and maintainable codebase.
*   **Fault Tolerance & Error Handling:** Implements comprehensive native `try-catch` blocks to gracefully handle `SocketException` (network failures), HTTP 401/404 (invalid API keys or unfound locations), preventing application crashes.
*   **Optimized Typography & Assets:** Utilizes `google_fonts` for a polished visual hierarchy and `flutter_launcher_icons` for automated, native-compliant app icon generation.

## 🛠️ Tech Stack

*   **Framework:** Flutter (Material 3 enabled)
*   **Language:** Dart
*   **Core Packages:** `http`, `google_fonts`, `flutter_launcher_icons`
*   **API Provider:** [OpenWeatherMap - Current Weather Data](https://openweathermap.org/current)

## 📁 Repository Structure

```text
weatherman_app/
├── lib/
│   ├── main.dart                 # Presentation Layer & State Management
│   └── services/
│       └── weather_service.dart  # Data Layer & API Integration
├── assets/
│   └── icon.png                  # Source Launcher Icon Graphic
├── pubspec.yaml                  # Dependency & Asset Configurations
└── README.md

## 📁 Local Developement Setup
To run this project locally, ensure you have the Flutter SDK installed on your machine.

*   **git clone [https://github.com/yourusername/weatherman_app.git](https://github.com/yourusername/weatherman_app.git)
cd weatherman_app
*   **flutter clean
*   **flutter pub get
*   **static const String _apiKey = 'YOUR_API_KEY_HERE';
*   **flutter run
*   **flutter build apk --release
