
#import <Foundation/NSString.h>

#import "EmailAddress.h"
#import "SOGoMailIdentity.h"

@class NSMutableArray;

@implementation SOGoMailIdentity

- (id) lookupName: (NSString *) _key
        inContext: (id) _ctx
          acquire: (BOOL) _flag
{

    // TESTING

    NSLog(@"cc: %x", cc);
	NSLog(@"lookupname %@", _key);

    [self weight: 8];
    NSLog(@"weight: %i", [self weight]);

    EmailAddress *j, *k;
    j = [EmailAddress alloc];
    [j name: @"Bela" address: @"bela@test.hu"];
    NSLog(@"name: %@, address: %@", [j name], [j address]);

    k = [EmailAddress alloc];
    [k name: @"Cezar" address: @"cezar@test.hu"];

    [self ccAdd: j];
    [self ccAdd: k];

    for (id ea in cc) {
        
        if ([ea isKindOf: [EmailAddress class]]) {
        NSLog(@"CC: %@, %@", [ea name], [ea address]);
        }
    }
    NSLog(@"FOR ok");

    [self from: j];
    NSLog(@"from: %@, %@", [self fromName], [self fromAddress]);

    [self from: @"Szabo David" email: @"davidt@teszt.hu"];
    NSLog(@"from2: %@, %@", [self fromName], [self fromAddress]);

    [self signature: @"alairas"];
    NSLog(@"Signature: %@", [self signature]);

    [j release];
    [k release];

    // END OF TESTING

    return [super lookupName: _key inContext:_ctx acquire: _flag];
}

- (NSArray*) cc
{
    return [cc copy];
}


- (void) ccAdd: (EmailAddress*) _ea
{

    EmailAddress *ea = [EmailAddress alloc];
    [ea name: [_ea name] address: [_ea address]];
    if (cc) {
        [cc addObject: ea];
    }
    NSLog(@"ccAdd");    
    
    return;
}

- (void) bccAdd: (EmailAddress*) _ea
{
    EmailAddress *ea = [EmailAddress alloc];
    [ea name: [_ea name] address: [_ea address]];
    [bcc addObject: ea];
    return;
}

- (void) bcc: (NSArray*) _value
{
    bcc = [_value copy];
    return;
}


- (EmailAddress*) from
{
    return [from copy];
}

- (NSString*) fromAddress
{
    return [from address];
}

- (NSString*) fromName
{
    return [from name];
}

- (void)    from: (EmailAddress*) _value
{
    [from name: [_value name] address: [_value address]];
    return;
}

- (void)    from: (NSString*) _name
            email: (NSString*) _email
{
    [from name: _name address: _email];
    return;
}

- (void) replyTo: (NSString*) _value
{
    replyTo = [_value copy];
    return;
}

- (NSString*) signature
{
    return signature;
}
- (void) signature: (NSString*) _value
{
    signature = [_value copy];
    return;
}

- (bool) confirmed
{
    return confirmed;
}
- (void) confirmed: (bool) _value
{
    confirmed = _value;
}


- (int) weight
{
    return weight;
}
- (void) weight: (int) _value
{
    weight = _value;
    return;
}

- (id) init
{
    self = [super init];
    cc = [[NSMutableArray alloc] init];
    NSLog(@"init invoked");
    bcc = [[NSMutableArray alloc] init];
    from = [[EmailAddress alloc] init];
    signature = [[NSString alloc] init];
    return self;
}

- (void) dealloc
{
    for(id addr in cc) {
        [addr release];
    }
    [cc release];

    for(id addr in bcc) {
        [addr release];
    }
    [bcc release];
    [replyTo release];
    [from release];
    [signature release];
    [super dealloc];
}

@end
