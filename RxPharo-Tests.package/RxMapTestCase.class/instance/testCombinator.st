as yet unclassified
testCombinator

	source := RxObservable fromCollection: (1 to: 30).
	self combinatoredStream
		do: [ :x | self assert: x isFloat ].