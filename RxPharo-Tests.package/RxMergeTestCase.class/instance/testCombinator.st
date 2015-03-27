as yet unclassified
testCombinator

	| amount |
	amount := 0.
	source := RxObservable fromCollection: (1 to: 30).
	self combinatoredStream
		do: [ :x | amount := amount + 1 ].
	self assert: amount equals: 40.