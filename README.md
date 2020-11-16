# MetarouterAnalytics-Firebase

[![Version](https://img.shields.io/cocoapods/v/MetarouterAnalytics-Firebase.svg?style=flat)](http://cocoapods.org/pods/MetarouterAnalytics-Firebase)
[![License](https://img.shields.io/cocoapods/l/MetarouterAnalytics-Firebase.svg?style=flat)](http://cocoapods.org/pods/MetarouterAnalytics-Firebase)
[![Platform](https://img.shields.io/cocoapods/p/MetarouterAnalytics-Firebase.svg?style=flat)](https://cocoapods.org/pods/MetarouterAnalytics-Firebase)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

MetarouterAnalytics-Firebase is currently only available through [CocoaPods](http://cocoapods.org).

Register your app in the [Firebase console](https://console.firebase.google.com/) and add the `GoogleService-Info.plist` to the root of your Xcode project.

Add the following dependency to your Podfile:

 ```
 pod 'MetarouterAnalytics-Firebase', '~> 2.7.1-beta'
 ```

After adding the dependency and running `pod install`, import the integration:

```
#import <MetarouterAnalytics_Firebase/SEGFirebaseIntegrationFactory.h>
```

Finally, register the dependency with the Metarouter Analytics SDK:

```
[config use:[SEGFirebaseIntegrationFactory instance]];
```

By default, Metarouter Analytics only bundles `Firebase/Core` which is [Firebase's Analytics offering](https://firebase.google.com/docs/analytics/). You can see the other available [Firebase pods and features here](https://firebase.google.com/docs/ios/setup).

## License

MetarouterAnalytics-Firebase is based on Segment-Firebase and is available under the MIT license. See the LICENSE file for more info.
