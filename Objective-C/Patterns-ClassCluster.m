// ---------------------------------------------------------------------------------------

// In Laugh.h:

#define kLaughWithGuffaw  1
#define kLaughWithGiggle  2

@interface Laugh: NSObject {}
- (Laugh *) initWithLaughter:(NSUInteger) laughterType;
- (void) laugh;
@end

// In Laugh.m:

@interface Guffaws:Laugh {}
- (void) laugh;
@end

@interface Giggles:Laugh {}
- (void) laugh;
@end

@implementation Laugh
- (Laugh *) initWithLaughter:(NSUInteger) laugherType {
    id instanceReturn=nil;
    ; // Removed for ARC [self release]
    if ( laughterType == kLaughWithGuffaw )
        instanceReturn = [[Guffaws alloc]init];
    else if( laughterType == kLaughWithGiggle )
        instanceReturn = [[Giggles alloc]init];
    else
        ; // deal with this
    return instanceReturn;
}

- (void) laugh {
    NSLog(@"Humbug");
}
@end

@implementation Guffaws
    - (void) laugh {
        NSLog(@"OH HA HA HOWAH HA HA HA");
    }
@end

@implementation Giggles
    - (void) laugh {
        NSLog(@"Tee hee");
    }
@end

// ---------------------------------------------------------------------------------------
