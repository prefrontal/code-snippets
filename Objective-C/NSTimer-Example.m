- (void) handleTimer: (NSTimer *) timer
{
    do some work here...
} // handleTimer

NSTimer *timer;

timer = [NSTimer scheduledTimerWithTimeInterval: 0.5
                 target: self
                 selector: @selector(handleTimer:)
                 userInfo: nil
                 repeats: YES];