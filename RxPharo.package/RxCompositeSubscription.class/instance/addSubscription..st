as yet unclassified
addSubscription: anSubcription
	|shouldUnsubscribe|
		mutex critical:[shouldUnsubscribe := unsubscribed.
			unsubscribed ifFalse:[subscriptions add: anSubcription].
			
			].
		shouldUnsubscribe ifTrue:[anSubcription unsubscribe].
    
