as yet unclassified
testErrorDoesNotPropagateValue

	| found |
	found := 0.
	source := RxObservable fromValuable: [ Error signal ].
	self combinatoredStream
		subscribe: (RxObserver
			onNextDo: [ :v | found := found + 1 ]
			onErrorDo: [ ]
			onCompletedDo: [ ]).
	self assert: found equals: 10.