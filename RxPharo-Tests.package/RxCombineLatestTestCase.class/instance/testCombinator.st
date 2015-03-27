as yet unclassified
testCombinator
	"self debug: #testCombinator"
	
	"this will combine the last of the elements that arrive to the streams. Since we are combining collections, Collections are streamed all in a row, so it will combine the last element from the source with the first of the next collection"
	| res |
	res := OrderedCollection new.
	source := RxObservable fromCollection: (1 to: 10).
	self combinatoredStream
		do: [ :x | self assert: x equals: 11 ].
	
	source := RxObservable fromCollection: (1 to: 21).
	self combinatoredStream
		do: [ :x | self assert: x equals: 22 ].