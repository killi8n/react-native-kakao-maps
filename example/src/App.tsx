import * as React from 'react';
import { StyleSheet } from 'react-native';
import KakaoMapManager from 'react-native-kakao-maps';

export default function App() {
  // const [result, setResult] = React.useState<number | undefined>();

  // React.useEffect(() => {
  //   K.
  //   KakaoMaps.multiply(3, 7).then(setResult);
  // }, []);

  // return (
  //   <View style={styles.container}>
  //     <Text>Result: {result}</Text>
  //   </View>
  // );
  const onCenterPointMovedTo = (nativeEvent: any) => {
    console.log('cdh-debug', nativeEvent.center);
  };
  return (
    <KakaoMapManager.KakaoMapView
      style={styles.Wrapper}
      onCenterPointMovedTo={onCenterPointMovedTo}
    />
  );
}

const styles = StyleSheet.create({
  Wrapper: {
    flex: 1,
  },
});
