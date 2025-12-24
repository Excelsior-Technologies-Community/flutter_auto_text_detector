# 🔍 Auto Text Detector

A lightweight and customizable Flutter library that **automatically detects and handles URLs, Emails, and Phone Numbers** inside normal text.

Perfect for chat apps, support screens, descriptions, and content-heavy UIs.

---

## ✨ Features

✅ Auto-detect **URLs**  
✅ Auto-detect **Email addresses**  
✅ Auto-detect **Phone numbers**  
✅ Click to open browser, mail app, or dialer  
✅ Separate **TextStyle for URL, Email & Phone**  
✅ Clean & reusable code  

---

## 📦 Installation

### Add this to your `pubspec.yaml`:

```yaml
dependencies:
  auto_text_detector:
    path:
      url: '.../flutter_auto_text_detector/auto_text_detector' ## your path
```

### Using GitHub (recommended during development):
```yaml
dependencies:
  auto_text_detector:
    git:
      url: https://github.com/YOUR_USERNAME/auto_text_detector.git
```

### 🚀 Import
```dart
import 'package:auto_text_detector/auto_text_detector.dart';
```
---

## 📸 Preview
<p align="center">
  <img 
    src="https://github.com/user-attachments/assets/41d77b8b-6ba6-4b1a-b6ba-19dc5bd7a72a"
    width="300"
  />
</p>


---

## 🧩 Basic Usage
```dart
AutoDetectorText(
  text: 'Visit https://flutter.dev or email test@gmail.com',
)
```

---

## 🎨 Advanced Usage (All Styles Together)
```dart
AutoDetectorText(
  text: '''
Hello 👋,

Visit https://flutter.dev for documentation.
Email us at support@fluttercompany.com
or call +91 9876543210 for urgent help.

Thank you 🚀
''',

  // Normal text
  normalStyle: const TextStyle(
    fontSize: 15,
    height: 1.5,
    color: Colors.black87,
  ),

  // Fallback detected style
  detectedStyle: const TextStyle(
    color: Colors.blue,
    decoration: TextDecoration.underline,
  ),

  // URL style
  urlStyle: const TextStyle(
    color: Colors.green,
    fontWeight: FontWeight.bold,
  ),

  // Email style
  emailStyle: const TextStyle(
    color: Colors.deepPurple,
    fontStyle: FontStyle.italic,
  ),

  // Phone style
  phoneStyle: const TextStyle(
    color: Colors.red,
    fontWeight: FontWeight.w600,
  ),
)
```

---

## 🎯 Style Priority Logic
Styles are applied in the following order:

1️⃣ `urlStyle / emailStyle / phoneStyle`   
2️⃣ `detectedStyle`   
3️⃣ Default blue underline   
This ensures full backward compatibility.

---

## 🗂️ Project Structure
```
lib/
│
├── auto_detector_text.dart
│
└── src/
    ├── core/
    │   ├── helpers/
    │   │   └── launcher_helper.dart
    │   └── utils/
    │       └── regex_utils.dart
    │
    └── auto_detector/
        ├── models/
        │   └── detected_text_type.dart
        └── widgets/
            └── auto_detector_text.dart
```

---

## 📄 License
```text
Copyright (c) 2025 Excelsior Technologies

Permission is hereby granted, free of charge, to any person obtaining a copy  
of this software and associated documentation files (the "Software"), to deal  
in the Software without restriction, including without limitation the rights  
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell  
copies of the Software, and to permit persons to whom the Software is  
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all  
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED **"AS IS"**, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR  
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,  
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
```
