'use strict';

var { RNAudioPlayer } = require('react-native').NativeModules;
var { Platform } = require('react-native');

var AudioPlayer = {
  play(fileName: string) {
    fileName = Platform.OS === 'ios' ? fileName : fileName.replace(/\.[^/.]+$/, "");
    RNAudioPlayer.play(fileName);
  },
  
  playFromURL(fileName: string) {
    RNAudioPlayer.playFromURL(fileName);
  }
};

module.exports = AudioPlayer;
