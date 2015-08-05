Ben's version is a stack instead of a queue, so i tweaked it a bit:

NSMutableArray+QueueAdditions.h

@interface NSMutableArray (QueueAdditions)
- (id) dequeue;
- (void) enqueue:(id)obj;
@end
NSMutableArray+QueueAdditions.m

@implementation NSMutableArray (QueueAdditions)
// Queues are first-in-first-out, so we remove objects from the head
- (id) dequeue {
    // if ([self count] == 0) return nil; // to avoid raising exception (Quinn)
    id headObject = [self objectAtIndex:0];
    if (headObject != nil) {
        [[headObject retain] autorelease]; // so it isn't dealloc'ed on remove
        [self removeObjectAtIndex:0];
    }
    return headObject;
}

// Add to the tail of the queue (no one likes it when people cut in line!)
- (void) enqueue:(id)anObject {
    [self addObject:anObject];
    //this method automatically adds to the end of the array
}
@end

Just import the .h file wherever you want to use your new methods, and call them like you would any other NSMutableArray methods.

Good luck and Keep on Coding!

From: http://stackoverflow.com/questions/817469/how-do-i-make-and-use-a-queue-in-objective-c