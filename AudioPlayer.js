'use strict';

var RNAudioPlayer = require('react-native').NativeModules.RNAudioPlayer;
var NativeAppEventEmitter = require('react-native').NativeAppEventEmitter;

module.exports = class AudioPlayer {
  constructor(options) {
    if (options && options.onPlaybackFinished) {
      NativeAppEventEmitter.addListener(
        'AudioPlayerDidFinishPlaying',
        options.onPlaybackFinished
      );
    }
  }

  play(fileName: string) {
    RNAudioPlayer.play(fileName);
  }

  pause() {
    RNAudioPlayer.pause();
  }

  stop() {
    RNAudioPlayer.stop();
  }
};
