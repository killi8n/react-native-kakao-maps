package com.reactnativekakaomaps;

import android.content.Context;
import android.graphics.Color;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.views.view.ReactViewGroup;

public class KakaoMapView extends ReactViewGroup {
  public KakaoMapView(Context context, ReactApplicationContext appContext) {
    super(context);
    this.setBackgroundColor(Color.parseColor("#b5d6e1"));
  }
}
