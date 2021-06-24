# Agora Swift Package Manager Example

There are two examples in this repository showing how you can install Agora's Video SDK using Swift Package Manager.

## Examples

### Agora_SDK-Example

This example installs the [Agora Video SDK Package](https://github.com/AgoraIO/AgoraRtcEngine_iOS) using Swift Package Manager (SwiftPM), and the rest of the project follows the [Start a Video Call](https://docs.agora.io/en/Video/start_call_ios?platform=iOS) guide to create a simple app that shows the local video feed and one remote video feed.

### Agora_UIKit-Example

This example install the [Agora UIKit package for iOS](https://github.com/AgoraIO-Community/iOS-UIKit) using SwiftPM, and creates the basic layout provided with Agora UIKit. This layout displays the local camera feed as well as all the remote camera feeds.

For the Agora UIKit Quickstart guide, see the following link:

https://www.agora.io/en/blog/quickstart-with-agora-uikit-for-ios/

## Permissions

Both app include the required permissions inside Info.plist. The two required permissions are [`NSCameraUsageDescription`](https://developer.apple.com/library/archive/documentation/General/Reference/InfoPlistKeyReference/Articles/CocoaKeys.html#//apple_ref/doc/plist/info/NSCameraUsageDescription) and [`NSMicrophoneUsageDescription`](https://developer.apple.com/library/archive/documentation/General/Reference/InfoPlistKeyReference/Articles/CocoaKeys.html#//apple_ref/doc/uid/TP40009251-SW25).

For more information on requesting authorization for media capture, check out [this article from Apple](https://developer.apple.com/documentation/avfoundation/cameras_and_media_capture/requesting_authorization_for_media_capture_on_ios).

## Issues

Xcode sometimes has issues with downloading large libraries such as the Agora SDK. If any errors are thrown, open Xcode and try `File > Swift Packages > Reset Package Caches`. If that does not fix your error, open a ticket on GitHub with as much detail as possible and we'll try to help you.
