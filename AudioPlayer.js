'use strict';

var RNAudioPlayer = require('NativeModules').RNAudioPlayer;

var AudioPlayer = {
  play(fileName: string) {
    RNAudioPlayer.play(fileName);
  }
};

module.exports = AudioPlayer;
