

#import "AppDelegate.h"

IMPL_APP_CONTROLLER_SUBCLASS(AppDelegate)


@implementation AppDelegate


-(BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [super application:application didFinishLaunchingWithOptions:launchOptions];
    
    return YES;
}

-(void)Pay:(int)money andExtra:(NSString *)extra
{
    [super Pay:money andExtra:extra];
    NSLog(@"AppDelegate.Pay");
    
    [self U3DSendMessage:ON_PAY andMsg:@"extra"];
     
    
}






 


@end