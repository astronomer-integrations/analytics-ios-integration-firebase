//
//  SEGFirebaseIntegration.h
//  Pods
//

#import <Foundation/Foundation.h>

#if defined(__has_include) && __has_include(<MetarouterAnalytics/SEGAnalytics.h>)
#import <MetarouterAnalytics/SEGIntegration.h>
#else
#import <Segment/SEGIntegration.h>
#endif


@interface SEGFirebaseIntegration : NSObject <SEGIntegration>

@property (nonatomic, strong) NSDictionary *settings;
@property (nonatomic, strong) Class firebaseClass;

- (id)initWithSettings:(NSDictionary *)settings;
- (id)initWithSettings:(NSDictionary *)settings andFirebase:(id)firebaseClass;


@end
