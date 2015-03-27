as yet unclassified
testFromCollection

	| value source |
	value := 0.
	source := RxObservable fromCollection: (1 to: 10).
	
	source onNextDo: [ :x | value := value + x. ].
	
	self assert: value equals: (1 to: 10) sum.