as yet unclassified
testPropagatesError

	| error found |
	error := Error new.
	source := RxObservable fromValuable: [ error signal ].
	self combinatoredStream
		subscribe: (RxObserver
			onNextDo: [ ]
			onErrorDo: [ :e | found := e ]
			onCompletedDo: [ ]).
	self assert: found equals: error.