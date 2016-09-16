//
//  CommonInterface.m
//  Unity-iPhone
//
//  Created by wuruijian on 14-9-28.
//
//

 
#import "CommonAppDelegate.h"

CommonAppDelegate *instance;


#if defined(__cplusplus)
extern "C"{
#endif
    

void SDK_Init()
{
    NSLog(@"------------SDK_Init");
    
}
    
void Pay(int32_t money, char* extra)
{
    NSString* strExtra=[[NSString alloc]initWithFormat:@"%s",extra];
    [instance Pay:money andExtra:strExtra];
}

    
#if defined(__cplusplus)
}
#endif
  

@implementation CommonAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    NSLog(@"CommonAppDelegate.didFinishLaunchingWithOptions");
    [super application:application didFinishLaunchingWithOptions:launchOptions];
    instance=self;
    return YES;
}

-(void)Pay:(int)money andExtra:(NSString*)extra
{
     NSLog(@"CommonAppDelegate.Pay");
}





-(void) U3DSendMessage:(MessageType)msgType  andMsg:(NSString *)msg
{
    const char* data = [[NSString stringWithFormat: @"%d;%@", msgType, msg] UTF8String];
    NSLog(@"--------------U3DInterface.SendMessage:%s", data);
    UnitySendMessage("Main Camera", "OnMessage", data);  
}





@end