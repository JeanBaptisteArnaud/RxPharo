as yet unclassified
testCombinator

	| first |
	first := nil.
	source := RxObservable fromCollection: (1 to: 30).
	self combinatoredStream
		do: [ :x | first ifNil: [ first := x ] ].
	self assert: first equals: self class.