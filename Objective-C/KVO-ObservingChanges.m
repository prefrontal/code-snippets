// ---------------------------------------------------------------------------------------

Start observing:

- (void)addObserver:(NSObject *)observer
         forKeyPath:(NSString *)keyPath
            options:(NSKeyValueObservingOptions)options
            context:(void *)context
            
Example:

- (void)registerAsObserver {
    /*
     Register 'inspector' to receive change notifications for the "openingBalance" property of
     the 'account' object and specify that both the old and new values of "openingBalance"
     should be provided in the observe… method.
     */
    [account addObserver:inspector
             forKeyPath:@"openingBalance"
                 options:(NSKeyValueObservingOptionNew |
                            NSKeyValueObservingOptionOld)
                    context:NULL];
}
            
When observed:

- (void)observeValueForKeyPath:(NSString *)keyPath
                      ofObject:(id)object
                        change:(NSDictionary *)change
                       context:(void *)context
                       
Example:

- (void)observeValueForKeyPath:(NSString *)keyPath
                      ofObject:(id)object
                        change:(NSDictionary *)change
                       context:(void *)context {
 
    if ([keyPath isEqual:@"openingBalance"]) {
        [openingBalanceInspectorField setObjectValue:
            [change objectForKey:NSKeyValueChangeNewKey]];
    }
    /*
     Be sure to call the superclass's implementation *if it implements it*.
     NSObject does not implement the method.
     */
    [super observeValueForKeyPath:keyPath
                         ofObject:object
                           change:change
                           context:context];
}

Removing an observer:

- (void)unregisterForChangeNotification {
    [observedObject removeObserver:inspector forKeyPath:@"openingBalance"];
}
                       
See: http://nshipster.com/key-value-observing/

// ---------------------------------------------------------------------------------------