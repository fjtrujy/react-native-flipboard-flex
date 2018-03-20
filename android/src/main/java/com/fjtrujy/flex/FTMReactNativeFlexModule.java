
package com.fjtrujy.flex;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.Callback;
import android.util.Log;

public class FTMReactNativeFlexModule extends ReactContextBaseJavaModule {
  private final static String MODULE_NAME = "FTMReactNativeFlex";
  private final ReactApplicationContext reactContext;

  public FTMReactNativeFlexModule(ReactApplicationContext reactContext) {
    super(reactContext);
    this.reactContext = reactContext;
  }

  @Override
  public String getName() {
    return MODULE_NAME;
  }

  @ReactMethod
  public void showExplorer() {
    //There are no FLEX library for Android
    Log.d("FLEX Library:","Android is not supported");
  }
}