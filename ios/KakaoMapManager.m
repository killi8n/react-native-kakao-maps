//
//  KakaoMapManager.m
//  KakaoMaps
//
//  Created by Dongho Choi on 2020/09/11.
//  Copyright © 2020 Facebook. All rights reserved.
//

#import "KakaoMapManager.h"
#import "KakaoMapView.h"

@implementation KakaoMapManager

RCT_EXPORT_MODULE(KakaoMapView)
RCT_EXPORT_VIEW_PROPERTY(onCenterPointMovedTo, RCTBubblingEventBlock)

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

+ (BOOL)requiresMainQueueSetup
{
    return YES;
}

- (UIView *) view
{
    return [[KakaoMapView alloc] initWithFrame:CGRectMake(0, 0, 0, 0)];
}

@end
