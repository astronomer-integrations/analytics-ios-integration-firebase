#import <Foundation/Foundation.h>

#if defined(__has_include) && __has_include(<MetarouterAnalytics/SEGAnalytics.h>)
#import <MetarouterAnalytics/SEGIntegrationFactory.h>
#else
#import <Segment/SEGIntegrationFactory.h>
#endif


@interface SEGFirebaseIntegrationFactory : NSObject <SEGIntegrationFactory>

+ (instancetype)instance;

@end
