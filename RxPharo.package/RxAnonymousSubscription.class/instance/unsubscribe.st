as yet unclassified
unsubscribe
	| shouldUnsubscribe |
	shouldUnsubscribe := false.
	mutex critical: [ shouldUnsubscribe := unsubscribed not ].
	(shouldUnsubscribe and: [ unsubscribeAction isNotNil ])
		ifTrue: [ unsubscribeAction value ]