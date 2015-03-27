as yet unclassified
testCompletedPropagatesLast

	| completed |
	source := RxObservable fromCollection: (1 to: 10).
	self combinatoredStream
		subscribe: (RxObserver
			onNextDo: [ :n | completed := false ]
			onErrorDo: [ ]
			onCompletedDo: [ completed := true ]).
	self assert: completed.