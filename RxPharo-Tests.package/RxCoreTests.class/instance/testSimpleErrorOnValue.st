Specific Observer - Value
testSimpleErrorOnValue
	| error receiver observer observable |
	receiver := false.
	error := false.
	observer := RxObserver 
		onNextDo: [:value | Error signal: 'Bwwwwaaaa!'. receiver := true.  ]
		onErrorDo: [:value | error := true.]. 
	observable :=	RxObservable fromValuable: 1.

	self deny: error.
	observable subscribe: observer.
	self assert: error.