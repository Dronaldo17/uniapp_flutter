//
//  UniNativeModule.h
//  UniCoreSDK
//
//  Created by 窦静轩 on 2020/10/10.
//

#import <Foundation/Foundation.h>
#import <UniCoreSDK/DCUniDefine.h>

NS_ASSUME_NONNULL_BEGIN

@interface UniNativeModule : NSObject

@property (nonatomic,weak)dispatch_queue_t executeQueue;

@property (nonatomic,weak)NSThread *  executeThread;

@property (nonatomic, weak) UniSDKInstance * uniInstance;


@end

NS_ASSUME_NONNULL_END
