as yet unclassified
initialize
	 mutex := Mutex new. 
    singleSubscription := nil.
    unsubscribed := false.
    set := false.