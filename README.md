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
* **Alamofire** (network layer)
* **CocoaPods** (dependency manager)
* JSON decoding with `Codable`

---

## 🚀 Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/LayzaCarneiro/WeatherNow.git
cd WeatherNow
```

### 2. Install dependencies (CocoaPods)

Make sure you have **CocoaPods** installed:

```bash
sudo gem install cocoapods
```

Then run:

```bash
pod install
```

And **open the workspace**:

```bash
open WeatherNow.xcworkspace
```

### 3. Configure your API key

Create a `APIKey.plist` file and add your API key:

```xml
<dict>
    <key>WeatherAPIKey</key>
    <string>YOUR_API_KEY_HERE</string>
</dict>
```

---

## 📦 Dependencies

The project uses the following external libraries:

### **CocoaPods**

This project manages dependencies using **CocoaPods**.

### **Alamofire**

HTTP networking is powered by:

```
pod 'Alamofire', '~> 5.8'
```

---

## 📌 Notes

* Make sure your API key is valid and has access to the OpenWeather forecast endpoint.
* This project is intended for educational and demo purposes.
