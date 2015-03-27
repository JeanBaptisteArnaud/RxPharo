as yet unclassified
delete: subscription
	| shouldUnsubscribe |
	mutex critical: [ shouldUnsubscribe := subscriptions remove: subscription ].
	shouldUnsubscribe
		ifNotNil: [ subscription unsubscribe ].
	^subscription