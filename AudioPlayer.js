/**
 * providesModule react-native-audioplayer
 */
var { RNAudioPlayer } = require('react-native').NativeModules;

var AudioPlayer = {
  play(fileName: string) {
    RNAudioPlayer.play(fileName);
  }
};

module.exports = AudioPlayer;
