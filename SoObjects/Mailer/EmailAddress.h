#ifndef EMAIL_ADDRESS_H
#define EMAIL_ADDRESS_H

#import <Foundation/NSObject.h>
#import <Foundation/NSString.h>

@class NSMutableString;

@interface EmailAddress : NSObject
{
    NSMutableString *name;
    NSMutableString *address;
}

- (NSString*) name;
- (void) name: (NSString*) _value;
- (void)    name: (NSString*) _name
            address: (NSString*) _address;

- (NSString*)  address;
- (void) address: (NSString*) _value;

- (void) dealloc;

@end

#endif /*EMAIL_ADDRESS_H*/
