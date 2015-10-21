package com.sh3rawi.RNAudioPlayer;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.Callback;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;

public class RNAudioPlayerModule extends ReactContextBaseJavaModule {
  ReactApplicationContext reactContext;
  MediaPlayer mp;

  public RNAudioPlayerModule(ReactApplicationContext reactContext) {
    super(reactContext);
    this.reactContext = reactContext;
  }

  @Override
  public String getName() {
    return "RNAudioPlayer";
  }

  @ReactMethod
  public void play(String audio) {
    String fname = audio.toLowerCase();
    int resID = this.reactContext.getResources().getIdentifier(fname, "raw", this.reactContext.getPackageName());
    mp = MediaPlayer.create(this.reactContext, resID);
    mp.start();
    mp.setOnCompletionListener(new OnCompletionListener() {
      @Override
      public void onCompletion(MediaPlayer mp) {
        mp.reset();
        mp.release();
        mp = null;
      }
    });
  }
}
