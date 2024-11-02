#import <StoreKit/StoreKit.h>
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
// iOS宝藏 https://t.me/iosrxwy

%hook TGGDTDeviceManager
- (void)setIsJailBroken:(bool)arg1 {
    arg1 = 0;
    %orig;
}
%end

%hook TGGDTLoadAdRequestExtData
- (void)setC_isjailbroken:(bool)arg1 {
    arg1 = 0;
    %orig;
}
%end

%hook SGSIAPManager
+ (bool)isJailBreak {
    return 0;
}
%end

%hook TGGDTSplashViewController
- (void)setWindow:(id)arg1 {
}
%end

%hook SGSAmsAdCell
- (void)initAmsAdViewWithModel:(id)arg1 {
}
%end

%hook SGSAmsAdCell
- (void)updateModel:(id)arg1 {
    arg1 = NULL;
    %orig;
}
%end

%hook SGSGDTNativeAdMixedBannerView
- (void)setupWithUnifiedNativeAdObject:(id)arg1 {
}
%end

%hook SGSGDTNativeAdMixedCommonView
- (void)setupWithUnifiedNativeAdObject:(id)arg1 {
}
%end

%hook SGSGDTNativeAdMixedBannerView
- (void)cancelAd {
}
%end

%hook SGSGDTNativeAdMixedCommonView
- (void)cancelAd {
}
%end

%hook TGGDTSplashViewController
- (bool)isShowSplash {
    return 0;
}
%end

// 内购全解锁，可能导致键盘切换出错，购买皮肤后建议移除
// %hook SKPaymentTransaction

// - (SKPaymentTransactionState)transactionState {
//     return SKPaymentTransactionStatePurchased;
// }

// %end
