//
//  DCUniDefine.h
//  UniCoreSDK
//
//  Created by 窦静轩 on 2020/9/30.
//

#import <Foundation/Foundation.h>
#import <UniCoreSDK/WeexSDK.h>
#import <UniCoreSDK/UniSDKInstance.h>

#define UNI_EXPORT_METHOD(method) UNI_EXPORT_METHOD_INTERNAL(method,wx_export_method_)

#define UNI_EXPORT_METHOD_SYNC(method) UNI_EXPORT_METHOD_INTERNAL(method,wx_export_method_sync_)

#define UNI_EXPORT_METHOD_INTERNAL(method, token) \
+ (NSString *)UNI_CONCAT_WRAPPER(token, __LINE__) { \
    return NSStringFromSelector(method); \
}

#define UNI_CONCAT_WRAPPER(a, b)    UNI_CONCAT(a, b)

#define UNI_CONCAT(a, b)   a ## b

typedef void (^UniModuleKeepAliveCallback)(id result, BOOL keepAlive);
