AutoDetach
testDetatchOnError
	| autoDetach complete error receiver observer observable |
	receiver := false.
	complete := false.
	error := false.
	observer := RxObserver 
		onNextDo: [:value | receiver := true. Error signal: 'Bwwwwaaaa!'. ]
		onErrorDo: [:value | error := true.]
		onCompletedDo: [complete := true]. 
	observable :=	RxObservable fromValuable: 1.

	autoDetach := observable subscribe: observer.
	self assert: error.
	self assert: autoDetach isUnsubscribed.