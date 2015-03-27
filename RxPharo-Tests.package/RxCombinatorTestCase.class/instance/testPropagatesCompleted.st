as yet unclassified
testPropagatesCompleted

	| completed |
	source := RxObservable fromCollection: (1 to: 10).
	self combinatoredStream
		subscribe: (RxObserver
			onNextDo: [ ]
			onErrorDo: [ ]
			onCompletedDo: [ completed := true ]).
	self assert: completed.