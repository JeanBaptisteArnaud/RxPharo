Specific Observer - Value
testSimpleNotCompleteOnErrorMultipleBugOnValue
	| complete error receiver observer observable count |
	receiver := false.
	complete := false.
	count := 0.
	error := false.
	observer := RxObserver 
		onNextDo: [:value | receiver := true. Error signal: 'Bwwwwaaaa!'. ]
		onErrorDo: [:value | count := count + 1. error := true.]
		onCompletedDo: [complete := true]. 
	observable :=	RxObservable fromValuable: 1.

	self deny: error.
	observable subscribe: observer.
	self assert: error.
	self deny: (count ~= 1).
	self deny: complete.