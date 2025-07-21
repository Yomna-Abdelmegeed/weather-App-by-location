# 🌦️ Weather App by Location

A clean and responsive Flutter application that displays real-time weather information based on the user’s current GPS location. Built using **Flutter**, **Dio** for networking, **BLoC** for state management, and OpenWeatherMap API.

---

## ✨ Features

- 📍 Detects device’s current location using `geolocator`
- ☁️ Fetches live weather data from OpenWeatherMap
- 🌡 Displays temperature, weather condition, and city name
- 🔄 Pull-to-refresh and automatic refresh on location update
- 💫 Loading spinner using `loading_animation_widget`
- 📱 Responsive and lightweight UI
- 🧠 Structured with BLoC architecture for clean separation of concerns
- ❗ Full error handling and visual feedback for loading/failure states
- 
---

## 🚀 Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/Yomna-Abdelmegeed/weather-App-by-location.git
cd weather-App-by-location
```

### 2. Install Dependencies

```bash
flutter pub get
```

### 3. Configure API Key

### 4. Run the App

```bash
flutter run
```

---

## 📦 Dependencies Used

| Package                   | Purpose                              |
|---------------------------|--------------------------------------|
| `dio`                     | HTTP client for API calls            |
| `geolocator`              | Fetching device location             |
| `flutter_bloc`            | BLoC pattern for state management    |
| `loading_animation_widget`| Animated loading indicators          |

---

## 👩‍💻 Author

**Yomna Abdelmegeed**  
[GitHub Profile](https://github.com/Yomna-Abdelmegeed)
