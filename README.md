# WeatherApp

**WeatherApp** is a simple iOS application built with **UIKit** that displays real-time weather data for a selected city.
It uses the [OpenWeather API](https://openweathermap.org/) to fetch current conditions and 24-hour temperature forecasts.

---

## 🌤️ Features

* Display of current weather:

  * City name
  * Current temperature
* Hour-by-hour temperature forecast for the next 24 hours

---

## 🖼️ Screenshots
<img width="170" height="420" alt="Simulator Screenshot - iPhone 16 Pro - 2025-08-03 at 01 21 08" src="https://github.com/user-attachments/assets/7dc21ec8-840b-4cae-aed7-42b6391007bb" />

---

## 🔧 Technologies

* Swift
* UIKit
* WeatherAPI (RESTful service)
* URLSession for networking
* JSON decoding with `Codable`

---

## 🚀 Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/LayzaCarneiro/WeatherNow.git
cd WeatherNow
```

### 2. Open in Xcode

```bash
open WeatherNow.xcodeproj
```

### 3. Configure your API key

Create a `APIKey.plist` file (or use your preferred method) and add your API key:

```xml
<dict>
    <key>WeatherAPIKey</key>
    <string>YOUR_API_KEY_HERE</string>
</dict>
```

You can get a free key from [https://www.weatherapi.com/](https://www.weatherapi.com/).

---

## 📦 Dependencies

No external dependencies – pure UIKit and native Swift features.

---

## 📌 Notes

* Make sure your API key is valid and has access to the forecast endpoint.
* This project is intended for educational and demo purposes.
