# Appium Automation README
This document provides guidelines and instructions for automating the testing of opening league, team, or player pages, tapping on sub-tabs, verifying correct tab navigation, and ensuring back navigation functionality using the chosen test automation framework (Robot Framework with Appium).

# Requirements
To successfully automate the testing process, the following requirements must be met:
1. Test Automation Framework: Robot Framework and Appium Library.
2. Test Environment Setup: Ensure the test environment is properly configured with the necessary tools and dependencies installed, including the chosen test automation framework and the mobile application under test.
3. Mobile Device or Emulator: Have access to a mobile device or emulator to run the automated tests. (Pixel 6a using Android studio was used)

# Test Automation Steps
Ensure you have robotframework installed. 
1. Change Directory to Android-Automation folder. 
2. Open command prompt/terminal/powershell and type "appium --base-path /wd/hub".
3. Ensure emulator is downloaded and running.
4. Run: "robot ./sampleApp.robot".

# Execution and Reporting
The reports/logs will be displayed in the Android-Automation file.

# Conclusion
Automating the testing process based on the provided requirements enhances efficiency and accuracy in verifying the functionality of opening pages, navigating tabs, and ensuring correct data display and navigation within the mobile application.
