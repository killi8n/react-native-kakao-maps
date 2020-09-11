package com.reactnativekakaomaps;

import androidx.annotation.NonNull;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.ViewGroupManager;

public class KakaoMapManager extends ViewGroupManager<KakaoMapView> {
  public static final String REACT_CLASS = "KakaoMapView";
  ReactApplicationContext appContext;

  public KakaoMapManager(ReactApplicationContext reactContext) {
    appContext = reactContext;
  }


  @NonNull
  @Override
  public String getName() {
    return REACT_CLASS;
  }

  @NonNull
  @Override
  protected KakaoMapView createViewInstance(@NonNull ThemedReactContext reactContext) {
    return new KakaoMapView(reactContext, appContext);
  }
}
