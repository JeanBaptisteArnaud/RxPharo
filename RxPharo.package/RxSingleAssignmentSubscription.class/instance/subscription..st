as yet unclassified
subscription: anSubscription
	| shouldUnsubscribe oldSubscription |
	set
		ifFalse: [ 
			set := true.
			shouldUnsubscribe := false.
			oldSubscription := nil.
			mutex
				critical: [ 
					shouldUnsubscribe := unsubscribed.
					oldSubscription := singleSubscription.
					singleSubscription := anSubscription ] ]
		ifTrue: [ Error signal: 'Subscription already set' ].	"cleanup the mess if required"
	oldSubscription ifNotNil: [ oldSubscription unsubscribe ].
	"I do not understand why just take it from the old implementation"
	(shouldUnsubscribe and: [ (anSubscription = nil) not ])
		ifTrue: [ anSubscription unsubscribe ]