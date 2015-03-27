as yet unclassified
testErrorDoesNotPropagateValue

	|  found |
	source := RxObservable fromValuable: [ Error signal ].
	self combinatoredStream
		subscribe: (RxObserver
			onNextDo: [ :v | found := v ]
			onErrorDo: [ ]
			onCompletedDo: [ ]).
	self assert: found equals: nil.