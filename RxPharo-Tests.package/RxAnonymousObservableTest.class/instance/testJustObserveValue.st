as yet unclassified
testJustObserveValue

	| source value |
	source := RxObservable just: 42.
	source onNextDo: [ :x | value := x. ].
	
	self assert: value equals: 42.