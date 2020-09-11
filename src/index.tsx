import { NativeModules } from 'react-native';

type KakaoMapsType = {
  multiply(a: number, b: number): Promise<number>;
};

const { KakaoMaps } = NativeModules;

export default KakaoMaps as KakaoMapsType;
