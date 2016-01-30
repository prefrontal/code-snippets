// -- Grand Central Dispatch ----------------------------------------------------------

// dispatch_main

dispatch_async (dispatch_get_main_queue(), { () -> Void in
    
})

// dispatch_async

dispatch_async (dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), { () -> Void in
    
    dispatch_async(dispatch_get_main_queue(), { () -> Void in
        
    })
})

// dispatch_after

dispatch_after (dispatch_time(DISPATCH_TIME_NOW, Int64(1 * Double(NSEC_PER_SEC))), dispatch_get_main_queue()) { () -> Void in
    
}