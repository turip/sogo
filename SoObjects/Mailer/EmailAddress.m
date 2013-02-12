#import "EmailAddress.h"

@class NSString;
@class NSMutableString;

@implementation EmailAddress

- (NSString*) name
{
    return [name copy];
}

- (void) name: (NSString*) _value
{
    name = [_value copy];
    return;
}

- (void)    name: (NSString*) _name
            address: (NSString*) _address
{
    [self name: _name];
    [self address: _address];
    return;
}

- (NSString*)  address
{
    return [address copy];
}

- (void) address: (NSString*) _value
{
    address = [_value copy];
    return;
}

- (void) dealloc
{
    [name release];
    [address release];
    [super dealloc];
    return;

}

@end
