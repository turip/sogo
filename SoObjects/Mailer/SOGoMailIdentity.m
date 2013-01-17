
#import <Foundation/NSString.h>

#import "SOGoMailIdentity.h"

@implementation SOGoMailIdentity

- (id) lookupName: (NSString *) _key
        inContext: (id) _ctx
          acquire: (BOOL) _flag
{
	NSLog(@"lookupname %@", _key);
	return [super lookupName: _key inContext:_ctx acquire: _flag];
}

@end
