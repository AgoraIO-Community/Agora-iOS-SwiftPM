# Agora Swift Package Manager Example

This example project demonstrates how to integrate and use the [Agora Video SDK](https://github.com/AgoraIO/AgoraRtcEngine_iOS) in an iOS application using Swift Package Manager (SwiftPM). The project implements a simple video calling application that displays both local and remote video feeds, following the [Start a Video Call](https://docs.agora.io/en/Video/start_call_ios?platform=iOS) guide.

## Features

- Real-time video calling capability
- Local video feed display
- Remote video feed display
- Simple user interface
- Swift Package Manager integration

## Prerequisites

- Xcode 13.0 or later
- iOS 13.0 or later
- An Agora developer account ([Sign up here](https://console.agora.io/))
- A valid Agora project with an App ID

## Installation

1. Clone this repository
2. Open the project in Xcode
3. Replace `<Your App ID>` in the project with your actual Agora App ID
4. Build and run the project

## Required Permissions

The application requires two key permissions in Info.plist:

- [`NSCameraUsageDescription`](https://developer.apple.com/library/archive/documentation/General/Reference/InfoPlistKeyReference/Articles/CocoaKeys.html#//apple_ref/doc/plist/info/NSCameraUsageDescription) - For accessing the camera
- [`NSMicrophoneUsageDescription`](https://developer.apple.com/library/archive/documentation/General/Reference/InfoPlistKeyReference/Articles/CocoaKeys.html#//apple_ref/doc/uid/TP40009251-SW25) - For accessing the microphone

For more information on requesting authorization for media capture, refer to [Apple's documentation](https://developer.apple.com/documentation/avfoundation/cameras_and_media_capture/requesting_authorization_for_media_capture_on_ios).

## Troubleshooting

### Swift Package Manager Issues

If you encounter issues with downloading the Agora SDK:

1. In Xcode, go to `File > Swift Packages > Reset Package Caches`
2. Clean the build folder: `Product > Clean Build Folder`
3. Rebuild the project

If problems persist:

- Check your internet connection
- Verify your Xcode version is compatible
- Open an issue on this repository with detailed information about the error

## Support

- For SDK issues, visit [Agora Developer Center](https://docs.agora.io/en/)
- For project-specific issues, create a GitHub issue
- Join the [Agora Developer Slack community](https://agoraio.slack.com/) for technical discussions

## License

This project is licensed under the MIT License - see the LICENSE file for details.
