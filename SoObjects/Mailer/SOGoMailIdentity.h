
#ifndef __SoObjects_SOGoMailIdentity_H__
#define __SoObjects_SOGoMailIdentity_H__

#import <Foundation/NSObject.h>
#import <SOGo/SOGoObject.h>
#import <Foundation/NSString.h>
#import <Foundation/NSArray.h>

#import "EmailAddress.h"

@class NSMutableArray;

@interface SOGoMailIdentity: SOGoObject
{
//  [self _EIMapField: @"identityCC"],
    NSMutableArray *cc;

//  [self _EIMapField: @"identityBCC"],
    NSMutableArray *bcc;

//  [self _EIMapField: @"identityReplyTo"],
    NSString *replyTo;

//  [self _EIMapField: @"identityFromAddress"],
//  [self _EIMapField: @"identityFromName"],
    EmailAddress *from;

//  [self _EIMapField: @"identitySignature"],
    NSString *signature;

//  [self _EIMapField: @"identityConfirmed"],
    bool confirmed;

//  [self _EIMapField: @"identityWeight"],
    int weight;
}


- (id) lookupName: (NSString *) _key
        inContext: (id) _ctx
	  acquire: (BOOL) _flag;

- (NSArray*) cc;
- (void) ccAdd: (EmailAddress*) _ea;


- (NSArray*) bcc;
- (void) bccAdd: (EmailAddress*) _ea;

- (EmailAddress*) from;
- (NSString*) fromAddress;
- (NSString*) fromName;

- (void)    from: (EmailAddress*) _value;
- (void)    from: (NSString*) _name
            email: (NSString*) _email;

- (NSString*) replyTo;
- (void)    replyTo: (NSString*) _value;

- (NSString*) signature;
- (void) signature: (NSString*) _value;

- (bool) confirmed;
- (void) confirmed: (bool) _value;

- (int) weight;
- (void) weight: (int) _value;

@end
#endif
