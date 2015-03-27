as yet unclassified
unsubscribe
	| oldSubscription |
	mutex critical:[
		unsubscribed ifFalse:[
			unsubscribed := true.
			oldSubscription := singleSubscription.
			singleSubscription := nil.]].
   oldSubscription ifNotNil:[oldSubscription unsubscribe].
   