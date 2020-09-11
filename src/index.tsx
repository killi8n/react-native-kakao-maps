import React, { Component } from 'react';
import { requireNativeComponent } from 'react-native';

interface KakaoMapViewProps {
  style?: object;
  onCenterPointMovedTo?: (nativeEvent: any) => void;
}

const KakaoMapManager = requireNativeComponent<KakaoMapViewProps>(
  'KakaoMapView'
);

class KakaoMapView extends Component<KakaoMapViewProps> {
  _onCenterPointMovedTo = (event: any) => {
    if (!this.props.onCenterPointMovedTo) {
      return;
    }
    this.props.onCenterPointMovedTo(event.nativeEvent);
  };
  render() {
    const { _onCenterPointMovedTo } = this;
    const { style } = this.props;
    return (
      <KakaoMapManager
        style={style}
        onCenterPointMovedTo={_onCenterPointMovedTo}
      />
    );
  }
}

export default {
  KakaoMapView,
};
