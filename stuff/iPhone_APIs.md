# iPhone native APIs available to third-party apps

**Sensors & Hardware**
- LiDAR Scanner
- Camera (photo, video, depth)
- Microphone
- Accelerometer
- Gyroscope
- Magnetometer / Compass
- Barometer
- Proximity Sensor
- Ambient Light Sensor
- Face ID / Touch ID (via LocalAuthentication)

**Location & Motion**
- GPS / Core Location
- Core Motion (step counting, activity recognition)
- Altimeter

**Communication**
- Phone / CallKit
- SMS / Messages (limited, via composition sheet)
- Email (via composition sheet)
- Push Notifications (APNs)
- VoIP

**Connectivity**
- Bluetooth (Core Bluetooth)
- Wi-Fi Aware / Network framework
- NFC (read/write, limited tag types)
- UWB (Ultra-Wideband, nearby interaction)

**Media & Display**
- AVFoundation (audio/video playback and recording)
- Core Image / Vision (image processing, ML-based detection)
- ARKit (augmented reality)
- Core Haptics (taptic engine)

**Data & Storage**
- Core Data / CloudKit
- iCloud Drive
- Contacts
- Calendar & Reminders
- Health (HealthKit)
- Wallet / PassKit

**AI & ML**
- Core ML (on-device inference)
- Vision framework (face, text, object detection)
- Natural Language framework
- Speech recognition

**System & Identity**
- Sign in with Apple
- Face ID / Touch ID
- Screen Time API
- App Tracking Transparency
- StoreKit (in-app purchase)

This covers the majority of what's exposed via Apple's public SDK. Some APIs (like NFC and HealthKit) have additional entitlement requirements and App Store review scrutiny.
