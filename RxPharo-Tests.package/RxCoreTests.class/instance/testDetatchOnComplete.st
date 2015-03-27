AutoDetach
testDetatchOnComplete
	| autoDetach complete error receiver observer observable |
	receiver := false.
	complete := false.
	error := false.
	observer := RxObserver 
		onNextDo: [:value | receiver := true.]
		onErrorDo: [:value | error := true.]
		onCompletedDo: [complete := true]. 
	observable :=	RxObservable fromValuable: 1.

	autoDetach := observable subscribe: observer.
	self deny: error.
	self assert: complete.
	self assert: autoDetach isUnsubscribed.