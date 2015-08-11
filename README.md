# react-native-audioplayer

Small audio player library for react native

## Usage

First you need to install react-native-audioplayer:

```javascript
npm install react-native-audioplayer --save
```

In XCode, in the project navigator, right click Libraries ➜ Add Files to [your project's name] Go to node_modules ➜ react-native-audioplayer and add the .xcodeproj file

In XCode, in the project navigator, select your project. Add the lib*.a from the audioplayer project to your project's Build Phases ➜ Link Binary With Libraries. Click .xcodeproj file you added before in the project navigator and go the Build Settings tab. Make sure 'All' is toggled on (instead of 'Basic'). Look for Header Search Paths and make sure it contains both $(SRCROOT)/../react-native/React and $(SRCROOT)/../../React - mark both as recursive.

Run your project (Cmd+R)

## Examples

First add a short sound file to your project. In XCode, in the project navigator, right click your project ➜ Add Files to [your project's name] and add the sound file.

The AudioPlayer API is exposed at AudioPlayer.play(soundName). The sound is played asynchronous so this method will return immediately.

### Basic

```javascript

// require module
var AudioPlayer = require('react-native-audioplayer');

// create instance of player with callback for playback finished event
var audioPlayer = new AudioPlayer({
  onFinishedPlayback: function() {
    console.log('playback finished!');
  }
});

// play sound
audioPlayer.play('beep.mp3');

```
