


#import "UnityAppController.h"


typedef enum
{
    ON_LOGIN,               //账号登入
    ON_PAY                  //支付
} MessageType;


@interface CommonAppDelegate : UnityAppController
{
    
    
}

-(void)Pay:(int)money andExtra:(NSString*)extra;
-(void) U3DSendMessage:(MessageType)msgType  andMsg:(NSString *)msg;



@end