# react-native-flipboard-flex

[![npm version](https://badge.fury.io/js/react-native-flipboard-flex.svg)](http://badge.fury.io/js/react-native-flipboard-flex)

Device Information for [React Native](https://github.com/facebook/react-native).

## TOC

* [General Info](#general-info)
* [Installation](#installation)
* [Linking](#linking)
* [Usage](#usage)
* [API](#api)
* [Release Notes](#release-notes)
* [react-native-web](#react-native-web)

## General Info

A React Native library for [Flex](https://github.com/Flipboard/FLEX) tool that belong Flipboard.
The original tool just support iOS, but this wrapper make at least don't fail either for Android or Web.
a
## Installation

Using npm:

```shell
npm install --save react-native-flibpoard-flex
```

or using yarn:

```shell
yarn add react-native-flipboard-flex
```

> ⚠️ If you are on React Native > 0.47, you must use version 0.11.0 of this library or higher

## Linking

### Automatic

```shell
react-native link react-native-flipboard-flex
```

(or using [`rnpm`](https://github.com/rnpm/rnpm) for versions of React Native < 0.27)

```shell
rnpm link react-native-flipboard-flex
```

### Manual

<details>
    <summary>iOS (via Cocoa Pods)</summary>

Add the following line to your build targets in your `Podfile`

`pod 'RNDeviceInfo', :path => '{node_modules_path}/react-native-flipboard-flex'`

Where `{node_modules_path}` is the path where you have the `node_modules`, ussually one level up.

Then run `pod install`

</details>

<details>
    <summary>Android</summary>

* **_optional_** in `android/build.gradle`:

```gradle
...
  ext {
    // dependency versions
    googlePlayServicesVersion = "<Your play services version>" // default: "+"
    compileSdkVersion = "<Your compile SDK version>" // default: 23
    buildToolsVersion = "<Your build tools version>" // default: "25.0.2"
    targetSdkVersion = "<Your target SDK version>" // default: 22
  }
...
```

* in `android/app/build.gradle`:

```diff
dependencies {
    ...
    compile "com.facebook.react:react-native:+"  // From node_modules
+   compile project(':react-native-flipboard-flex')
}
```

* in `android/settings.gradle`:

```diff
...
include ':app'
+ include ':react-native-flipboard-flex'
+ project(':react-native-flipboard-flex').projectDir = new File(rootProject.projectDir, '{node_modules_path}/react-native-flipboard-flex/android')
```

Where `{node_modules_path}` is the path where you have the `node_modules`, ussually one level up.


#### With React Native 0.29+

* in `MainApplication.java`:

```diff
+ import com.learnium.RNDeviceInfo.RNDeviceInfo;

  public class MainApplication extends Application implements ReactApplication {
    //......

    @Override
    protected List<ReactPackage> getPackages() {
      return Arrays.<ReactPackage>asList(
+         new RNFlipboardFlexPackage(),
          new MainReactPackage()
      );
    }

    ......
  }
```

#### With older versions of React Native:

* in `MainActivity.java`:

```diff
+ import com.learnium.RNDeviceInfo.RNDeviceInfo;

  public class MainActivity extends ReactActivity {
    ......

    @Override
    protected List<ReactPackage> getPackages() {
      return Arrays.<ReactPackage>asList(
+       new RNFlipboardFlexPackage(),
        new MainReactPackage()
      );
    }
  }
```


</details>

## Usage

```js
var RNFlipboardFlex = require('react-native-flipboard-flex');
// or import RNFlipboardFlex from 'react-native-flipboard-flex';
```

## API

| Method                                            | Return Type         |  iOS | Android | Since  |
| ------------------------------------------------- | ------------------- | :--: | :-----: | :-----: |
| [showExplorer()](#showExplorer)                     | `void`              |  ✅  |   ✅    | 1.0.0 |

---

### showExplorer()

Show Flex explorer.

**Examples**

```js
RNFlipboardFlex.showExplorer();

// iOS: Will Show the flex explorer
// Android: Will do nothing
```

**Notes**

> See [Flex github](https://github.com/Flipboard/FLEX)

---


## Release Notes

See the [CHANGELOG.md](https://github.com/fjtrujy/react-native-flipboard-flex/blob/master/CHANGELOG.md).

## react-native-web

This library was made compatible with [react-native-web](https://github.com/necolas/react-native-web) by providing an empty polyfill in order to avoid breaking builds.