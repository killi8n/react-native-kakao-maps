//
//  KakaoMapView.m
//  KakaoMaps
//
//  Created by Dongho Choi on 2020/09/11.
//  Copyright © 2020 Facebook. All rights reserved.
//

#import "KakaoMapView.h"

@implementation KakaoMapView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupMapView];
    }
    return self;
}

- (void)dealloc
{
    self.mapView.delegate = nil;
}

- (void)setupMapView
{
    if (self.mapView) {
        return;
    }
    self.mapView = [[MTMapView alloc] initWithFrame:CGRectMake(self.bounds.origin.x, self.bounds.origin.y, self.bounds.size.width, self.bounds.size.height)];
    self.mapView.delegate = self;
    self.mapView.baseMapType = MTMapTypeStandard;
    [self addSubview:self.mapView];
}

- (void)mapView:(MTMapView *)mapView centerPointMovedTo:(MTMapPoint *)mapCenterPoint
{
    double latitude = mapCenterPoint.mapPointGeo.latitude;
    double longitude = mapCenterPoint.mapPointGeo.longitude;
    
    if (!self.onCenterPointMovedTo) {
        return;
    }
    self.onCenterPointMovedTo(@{
        @"center": @{
                @"latitude": @(latitude),
                @"longitude": @(longitude)
        }
    });
}

@end
