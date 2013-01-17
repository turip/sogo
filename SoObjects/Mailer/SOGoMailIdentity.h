
#ifndef __SoObjects_SOGoMailIdentity_H__
#define __SoObjects_SOGoMailIdentity_H__

#import <Foundation/NSObject.h>
#import <SOGo/SOGoObject.h>

@interface SOGoMailIdentity: SOGoObject
{
}


- (id) lookupName: (NSString *) _key
        inContext: (id) _ctx
	  acquire: (BOOL) _flag;


@end
#endif
