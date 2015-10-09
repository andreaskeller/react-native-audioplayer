# react-native-audioplayer

Small audio player library for react native

##Installation

First you need to install react-native-audioplayer:

```javascript
npm install react-native-audioplayer --save
```

### Installation (iOS)

In XCode, in the project navigator, right click Libraries ➜ Add Files to [your project's name] ➜ Go to node_modules ➜ react-native-audioplayer and add the .xcodeproj file

In XCode, in the project navigator, select your project. Add the lib*.a from the audioplayer project to your project's Build Phases ➜ Link Binary With Libraries. Then, click on the .xcodeproj file you added before in the project navigator, and go the Build Settings tab. Make sure 'All' is toggled on (instead of 'Basic'). Look for Header Search Paths and make sure it contains both $(SRCROOT)/../react-native/React and $(SRCROOT)/../../React - mark both as recursive.

### Installation (Android)

* In `android/settings.gradle`

```gradle
...
include ':RNAudioPlayer', ':app'
project(':RNAudioPlayer').projectDir = new File(rootProject.projectDir, '../node_modules/react-native-audioplayer/android')
```

* In `android/app/build.gradle`

```gradle
...
dependencies {
  ...
  compile project(':RNAudioPlayer')
}
```

* Register the module (in MainActivity.java)

```java
import com.sh3rawi.RNAudioPlayer.*; // <--- import

public class MainActivity extends Activity implements DefaultHardwareBackBtnHandler {
  ...

  @Override
  protected void onCreate(Bundle savedInstanceState){
    ...
    mReactInstanceManager = ReactInstanceManager.builder()
      .setApplication(getApplicatio)
      ...
      .addPackage(new MainReactPackage())
      .addPackage(new RNAudioPlayer())   //  <--- add here
      ...
  }
}
```

## Usage

### Usage (iOS)

First add a short sound file to your project. In XCode, in the project navigator, right click your project ➜ Add Files to [your project's name] and add the sound file.

### Usage (Android)

Put your audio resources in '[project_root]/android/app/src/main/res/raw'

The AudioPlayer API is exposed at AudioPlayer.play(soundName). The sound is played asynchronous so this method will return immediately.

### Note on Usage

There is a difference between the two platforms' handling of resources, whereas when passing to iOS the file name with the extension must be passed ('beep.mp3'), Android requires only the name ('beep'). That is why the JS module removes the extension part (anything after the last dot in name) before calling the java module.

### Example

```javascript

//require module
var AudioPlayer = require('react-native-audioplayer');

//play sound
AudioPlayer.play('beep.mp3');

```
