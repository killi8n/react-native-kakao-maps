//
//  KakaoMapView.h
//  KakaoMaps
//
//  Created by Dongho Choi on 2020/09/11.
//  Copyright © 2020 Facebook. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <React/RCTComponent.h>
#import "DaumMap.framework/Headers/MTMapView.h"

@interface KakaoMapView : UIView<MTMapViewDelegate>
@property (nonatomic) MTMapView *mapView;
@property (nonatomic, copy) RCTBubblingEventBlock onCenterPointMovedTo;
- (void) setupMapView;
@end
