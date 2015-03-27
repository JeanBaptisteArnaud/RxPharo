as yet unclassified
testCombineLatest

	| value combined source1 source2 |
	source1 := RxObservable just: 38.
	source2 := RxObservable just: 42.
	
	combined := source1 combineLatestOf: source2 with: [ :a :b | a + b ].
	combined onNextDo: [ :x | value := x. ].
	
	self assert: value equals: 80.