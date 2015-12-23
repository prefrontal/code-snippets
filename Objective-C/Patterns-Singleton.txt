// ---------------------------------------------------------------------------------------

// MyManager.h

#import <foundation/Foundation.h>

@interface MyManager : NSObject {
    NSString *someProperty;
}

@property (nonatomic, retain) NSString *someProperty;

+ (id)sharedManager;

@end

// ---------------------------------------------------------------------------------------

// MyManager.m

#import "MyManager.h"

@implementation MyManager

@synthesize someProperty;

#pragma mark Singleton Methods

+ (id)sharedManager {
    static MyManager *sharedMyManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedMyManager = [[self alloc] init];
    });
    return sharedMyManager;
}

- (id)init {
  if (self = [super init]) {
      someProperty = [[NSString alloc] initWithString:@"Default Property Value"];
  }
  return self;
}

- (void)dealloc {
  // Should never be called, but just here for clarity really.
}

@end

// ---------------------------------------------------------------------------------------

What this does is it defines a static variable (but only global to this translation unit)) 
called sharedMyManager which is then initialised once and only once in sharedManager. The 
way we ensure that it’s only created once is by using the dispatch_once method from Grand 
Central Dispatch (GCD). This is thread safe and handled entirely by the OS for you so that 
you don’t have to worry about it at all.

However, if you would rather not use GCD then you 
should use the following code for sharedManager:

	// Non-GCD based code

	+ (id)sharedManager {
		static MyManager *sharedMyManager = nil;
		@synchronized(self) {
			if (sharedMyManager == nil)
				sharedMyManager = [[self alloc] init];
		}
		return sharedMyManager;
	}
	Then you can reference the singleton from anywhere by calling the following function:

	MyManager *sharedManager = [MyManager sharedManager];

I’ve used this extensively throughout my code for things such as creating a singleton to 
handle CoreLocation or CoreData functions.

From: http://www.galloway.me.uk/tutorials/singleton-classes/

// ---------------------------------------------------------------------------------------
