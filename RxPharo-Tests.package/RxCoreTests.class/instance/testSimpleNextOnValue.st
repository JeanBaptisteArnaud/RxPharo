Specific Observer - Value
testSimpleNextOnValue
	| receiver observer observable |
	receiver := false.
	observer := RxObserver 
		onNextDo: [:value | receiver := true ]. 
	observable :=	RxObservable fromValuable: 1.

	self deny: receiver.
	observable subscribe: observer.
	self assert: receiver.