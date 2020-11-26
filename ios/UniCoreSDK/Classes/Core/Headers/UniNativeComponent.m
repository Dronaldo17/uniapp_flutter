//
//  UniNativeComponent.m
//  UniCoreSDK
//
//  Created by 窦静轩 on 2020/10/10.
//

#import "UniNativeComponent.h"
#import <UniCoreSDK/UniSDKInstance.h>

@implementation UniNativeComponent

- (instancetype)initWithInstance:(UniSDKInstance*)uniInstance
                            ref:  (NSString *)ref
                            type: (NSString*)type
                          styles: (nullable NSDictionary *)styles
                      attributes: (nullable NSDictionary *)attributes
                          events: (nullable NSArray *)events
{
    self = [super initWithRef:ref type:type styles:styles attributes:attributes events:events weexInstance:uniInstance];
    if (self) {
        
    }
    return self;
}

#pragma mark - setter
-(void)setUniComponentType:(UniComponentType)uniComponentType
{
    self.componentType = (WXComponentType)uniComponentType;
}

-(UniComponentType)uniComponentType
{
    return (UniComponentType)self.componentType;
}

#pragma mark - getter
-(NSArray<UniNativeComponent *>*)uniSubcomponents
{
    NSMutableArray * tmpSubComponents = [NSMutableArray new];
    for (int i = 0; i < self.subcomponents.count; i++) {
        WXComponent * component = self.subcomponents[i];
        UniNativeComponent * uniComponent  = (UniNativeComponent*)component;
        [tmpSubComponents addObject:uniComponent];
    }
    return [NSArray arrayWithArray:tmpSubComponents];
}


-(UniSDKInstance*)uniInstance
{
    return (UniSDKInstance*)self.uniInstance;
}

-(UniNativeComponent*)uniSupercomponent
{
    return (UniNativeComponent*)self.supercomponent;
}

- (void)uniInsertSubview:(UniNativeComponent *)subcomponent atIndex:(NSInteger)index
{
    [self insertSubview:subcomponent atIndex:index];
}

- (void)uniWillRemoveSubview:(UniNativeComponent *)component
{
    [self willRemoveSubview:component];
}

- (void)uniMoveToSuperview:(UniNativeComponent *)newSupercomponent atIndex:(NSUInteger)index
{
    [self moveToSuperview:newSupercomponent atIndex:index];
}

@end
