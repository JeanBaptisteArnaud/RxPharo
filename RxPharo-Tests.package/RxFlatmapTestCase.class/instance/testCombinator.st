as yet unclassified
testCombinator

	source := RxObservable fromCollection: (1 to: 10).
	self combinatoredStream
		do: [ :x | self assert: x <= 10 ].