Yes, a C++ program that uses SDL2 (Simple DirectMedia Layer 2) can be compiled for Android.
SDL2 is a cross-platform development library designed to provide low-level access to audio,
keyboard, mouse, joystick, and graphics hardware via OpenGL and Direct3D.
It is used by video playback software, emulators, and popular games, making it a versatile
choice for cross-platform development.

To compile a C++ program with SDL2 for Android, you typically need to:

1. **Set Up the Android Development Environment**:
    Install Android Studio and the Android NDK (Native Development Kit).
    The NDK allows you to use C and C++ code with Android,
    and it can be integrated with your SDL2 project.


2. **Configure SDL2 for Android**:
    SDL2 supports Android, but you will need to download and configure the SDL2
    source specifically for Android. SDL2 provides project templates and files 
    that can be used with the Android NDK.


3. **Modify Your Code for Android Compatibility**:
    Depending on your application, you might need to make changes to the code to handle 
    Android-specific functionality, such as touch input or different screen sizes.


4. **Compile and Build the APK**:
    Using the NDK and Android Studio, you can compile your C++ code into a library 
    and then build an Android APK that includes your SDL2 application.


5. **Test on Android Devices**:
    Before releasing, it’s important to test your application on actual 
    Android devices to ensure compatibility and performance.

There are detailed guides and resources available online that can help you through this process.
SDL2's own documentation and community forums are good starting points for understanding how
to port your application to Android.
