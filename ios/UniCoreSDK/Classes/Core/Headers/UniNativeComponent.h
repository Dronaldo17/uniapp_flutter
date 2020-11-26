//
//  UniNativeComponent.h
//  UniCoreSDK
//
//  Created by 窦静轩 on 2020/10/10.
//

#import "DCUniDefine.h"

@class UniSDKInstance;
typedef enum : NSUInteger {
    UniDisplayTypeNone,
    UniDisplayTypeBlock
} UniDisplayType;

typedef NS_ENUM(NSUInteger, UniComponentType) {
    UniComponentTypeCommon = 0,
    UniComponentTypeVirtual
};


@class UniSDKInstance;
NS_ASSUME_NONNULL_BEGIN

@interface UniNativeComponent : WXComponent

- (instancetype)initWithInstance:(UniSDKInstance*)uniInstance
                            ref:  (NSString *)ref
                            type: (NSString*)type
                          styles: (nullable NSDictionary *)styles
                      attributes: (nullable NSDictionary *)attributes
                          events: (nullable NSArray *)events;

@property (nonatomic, assign) UniComponentType uniComponentType;

@property (nonatomic, readonly, weak, nullable) UniSDKInstance * uniInstance;


@property (nonatomic, readonly, strong, nullable) NSArray<UniNativeComponent *> * uniSubcomponents;

@property (nonatomic, readonly, weak, nullable) UniNativeComponent * uniSupercomponent;


- (void)uniInsertSubview:(UniNativeComponent *)subcomponent atIndex:(NSInteger)index;

- (void)uniWillRemoveSubview:(UniNativeComponent *)component;

- (void)uniMoveToSuperview:(UniNativeComponent *)newSupercomponent atIndex:(NSUInteger)index;

@property (nonatomic, assign) UniDisplayType uniDisplayType;

@end


@interface UIView (UniNativeComponent)

@property (nonatomic, weak) UniNativeComponent *uni_component;

@property (nonatomic, weak) NSString *uni_ref;

@end

@interface CALayer (UniNativeComponent)

@property (nonatomic, weak) UniNativeComponent *uni_component;

@end


NS_ASSUME_NONNULL_END
