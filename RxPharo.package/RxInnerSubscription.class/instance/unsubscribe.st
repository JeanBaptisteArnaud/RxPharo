as yet unclassified
unsubscribe	
	observer ifNotNil: [subject unsubscribeObserver: observer.
			subject := nil.
         observer := nil].