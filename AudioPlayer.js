'use strict';

var RNAudioPlayer = require('react-native').NativeModules.RNAudioPlayer;

var AudioPlayer = {
  play(fileName: string) {
    RNAudioPlayer.play(fileName);
  }
};

module.exports = AudioPlayer;
