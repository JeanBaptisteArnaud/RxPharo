instance-creation
generateFrom: aNumber
	
	^ self withObserverDo: [ :observer | | count |
		count := aNumber.
		[ true ] whileTrue: [ 
			observer onNext: count.
			count := count + 1 ].
		observer onCompleted.
	]