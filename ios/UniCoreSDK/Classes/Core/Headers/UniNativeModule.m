//
//  UniNativeModule.m
//  UniCoreSDK
//
//  Created by 窦静轩 on 2020/10/10.
//

#import "UniNativeModule.h"
#import <UniCoreSDK/WeexSDK.h>

@interface UniNativeModule()<WXModuleProtocol>

@end

@implementation UniNativeModule

-(dispatch_queue_t)executeQueue
{
    return [self targetExecuteQueue];
}

-(NSThread*)executeThread
{
    return [self targetExecuteThread];
}

-(UniSDKInstance*)plugInstance
{
    return (UniSDKInstance*)self.weexInstance;
}


@end
