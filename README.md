## For API tests:

`mvn clean test -Dtest=HttpBinTest`

## For Mobile Automation:

Appium: Install appium from npm

`npm install -g appium`<br>
`npm install -g appium-doctor` (check dependency for appium )

Android:  (would need approx 2GiB of network data)

Download and Install Android Studio for mac : https://developer.android.com/studio#downloads<br>
Setup `ANDROID_HOME` in environment variables 
you should be able to run CLI commands like `sdkmanager`, `emulator`, `avdmanager`

`sdkmanager --update` <br>
`sdkmanager --list`     (can use any x86_64 image from this for download)<br>
`sdkmanager "system-images;android-27;default;x86_64"` (this downloads emulator for android Oreo)<br>
`avdmanager create avd -n <AVD_NAME> -k "system-images;android-27;default;x86_64" -g "default"`<br>
`emulator -list-avds`<br>
`appium-doctor`<br>
`emulator -avd <AVD_NAME>`(to launch avd in emulator)<br>
`emulator -avd <AVD_NAME> -no-snapshot-load`(to launch avd in emulator with *cold boot*)<br>

iOS: (would need approx 6GiB of network data)<br>

Download and install xcode 9 or above from https://developer.apple.com/download/ <br>
need a apple developer id you can use your apple id for this.<br>

`xcrun simctl list device`<br>
`appium-doctor`


`mvn clean test -Dtest=CalcUiRunner`
