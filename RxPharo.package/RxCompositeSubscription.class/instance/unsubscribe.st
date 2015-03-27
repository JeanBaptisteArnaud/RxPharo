as yet unclassified
unsubscribe
	| currentSubscriptions |
	mutex
		critical: [ 
			unsubscribed := true.
			currentSubscriptions := subscriptions.
			subscriptions := Set new ].
	currentSubscriptions ifNotNil: [ currentSubscriptions do: [ :eachSubscription | eachSubscription unsubscribe ] ]